class DonutRatingsController < ApplicationController

  def create
    @rating = DonutRating.new(rating_params)
    @rating.donut_id = params[:donut_id]
    @rating.user_id = session[:user_id]
    @donut = Donut.find(@rating.donut_id)
    @rating.donut_shop_id = @donut.donut_shop_id
    if @rating.valid?
      @rating.save
      redirect_to @donut
    else
      @errors = @rating.errors.full_messages
      render 'donut_shops/new'
    end
  end

  private

  def rating_params
    params.require(:donut_rating).permit( :score, :description)
  end


end
