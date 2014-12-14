class ChartsController < ApplicationController
  def spotify_popularity
  end

  def data
    @soldout = Concert.soldout_spotify
    @notsoldout = Concert.not_soldout_spotify
    render json: {soldout: @soldout, notsoldout: @notsoldout}
  end
end
