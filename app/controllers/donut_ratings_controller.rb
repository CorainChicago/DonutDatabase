class DonutRatingsController < ApplicationController


  def create
    byebug
    p "hi"
  end

  private

  def rating_params
    params.require(:donut_rating).permit( :score, :description)
  end

end
