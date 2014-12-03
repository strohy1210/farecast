class Concert < ActiveRecord::Base
  belongs_to :venue
  belongs_to :artist

  def popularity_index
      sg_popularity_weight = 0.25
      spotify_popularity_weight = 0.25
      echo_familiarity_weight = 0.25
      echo_heat_weight = 0.25
      @popularity_index = (
        sg_popularity_weight * self.sg_popularity + 
        spotify_popularity_weight * self.spotify_popularity + 
        echo_familiarity_weight * self.echo_familiarity + 
        echo_heat_weight * self.echo_heat
        )
  end
      
  def add_popularity
    self.update(
      :spotify_popularity => calc_spotify_popularity, 
      :sg_popularity => calc_seatgeek_popularity,
      :echo_familiarity => calc_echonest_familiarity,
      :echo_hotttnesss => calc_echonest_hotttnesss
      )
  end  

  def calc_seatgeek_popularity
    name_slug = self.artist.name.downcase.gsub(" ", "-")
    result = JSON.load(open("http://api.seatg`k.com/2/events?performers.slug=#{name_slug}"))
    (result["events"][0]["performers"][0]["score"] * 100).round(1) 
  end

  def spotify_connect
    RSpotify::Artist.search(self.artist.name)
  end

  def calc_spotify_popularity
    spotify_connect[0].popularity
  end

  def recent_album?
    album = spotify_connect[0].albums.first.release_date
    num_of_days = (Date.today - Date.parse(album)).to_i
    if num_of_days < 180
      true
    else
      false
    end    
  end  

  def echonest_connect
    Echonest::Artist.new("#{ENV['echonest_api_key']}", "#{self.artist.name}")
  end  

  def calc_echonest_familiarity
    (echonest_connect.familiarity * 100).round(1)
  end  

  def calc_echonest_hotttnesss
    (echonest_connect.hotttnesss * 100).round(1)
  end


end