class Concert < ActiveRecord::Base
  belongs_to :venue
  belongs_to :artist

  def popularity_index
    seatgeek_weight = 0.50
    spotify_weight = 0.50
    @popularity_index = (seatgeek_weight*self.seatgeek_popularity + spotify_weight*self.spotify_popularity)
  end

  def farecast_buy_score
    self.popularity_index   70
    self.venue.capacity # 

    @pop_to_capacity_scale = {
      85 => 1400,
      60 => 550,
      55 => 600,
      40 => 300
    }
    
  end

  def spotify_follower_index
    self.artist_followers
    most_popular_artists= {'Kanye' => 2200000, 'Lady Gaga' => 1200000, 'One Direction' => 2600000, 'Justin Bieber' => 2245000, 'Beyonce' => 2200000 }
  end

end