class DonutRatingsController < ApplicationController

  def show
  end

  def create
    # @rating = DonutRating.new(rating_params)
    byebug
    # @rating.donut_id = session[:donut_id]
    # @rating.user_id = session[:id]
    # @donut = Donut.find(session[:donut_id])
    # @rating.donut_shop_id = @donut.donut_shop_id
    # if @rating.save
    #   redirect_to @donut
    # else
    #   render root_path
    # end
  end

  private

  def rating_params
    params.require(:donut_rating).permit( :score, :description)
  end

end
