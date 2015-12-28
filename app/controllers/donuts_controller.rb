class DonutsController < ApplicationController

  def new
    @shops = DonutShop.all
  end

  def create
    @donut = Donut.new(donut_params)
    @donut.donut_shop = DonutShop.find(params[:donut][:donut_shop_id])
    if @donut.save
      redirect_to @donut
    end

  end

  def show
    session[:donut_id] = params[:id]
    @donut = Donut.find(params[:id])
    @donut_shop = DonutShop.find(@donut.donut_shop_id)
    @ratings = DonutRating.where(donut_id: session[:donut_id]) 
  end

  def index
    @donuts = Donut.all
  end

  private

  def donut_params
    params.require(:donut).permit(:name, :description)
  end

end
