class Concert < ActiveRecord::Base
  belongs_to :venue
  belongs_to :artist

  def popularity_index
    seatgeek_weight = 0.50
    spotify_weight = 0.50
    @popularity_index = (seatgeek_weight*self.seatgeek_popularity + spotify_weight*self.spotify_popularity)
  end

end