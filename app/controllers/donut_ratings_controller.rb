class RatingsController < ApplicationController

  def show
    @ratings = DonutRating.find_by(donut_id: params)
  end
end
