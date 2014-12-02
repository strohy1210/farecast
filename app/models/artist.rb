class Artist < ActiveRecord::Base
  has_many :concerts
  has_many :venues, :through => :concerts

 def seatgeek_popularity
    name_slug = self.name.downcase.gsub(" ", "-")
    result = JSON.load(open("http://api.seatgeek.com/2/events?performers.slug=#{name_slug}"))
    result["events"][0]["performers"][0]["score"]
  end

  def spotify_popularity
  result = RSpotify::Artist.search(self.name)
  result[0].popularity
  end

# artist = Echonest::Artist.new('NZV019XONS1GTDODA', 'The 1975')
# artist.familiarity
# artist.hotttnesss

end
