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

      @popularity_index
    end

    def sg_popularity
      70.12
    end
    def spotify_popularity
      80.12
    end
    def echo_familiarity
      55.12
    end
    def echo_heat
      54.12
    end

end