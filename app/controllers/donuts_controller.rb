class DonutsController < ApplicationController

  def new
    @shops = DonutShop.all
  end

  def create
    @donut = Donut.new(donut_params)
    if @donut.save
      render "donuts/show"
    else
      redirect_to root_path
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
    params.require(:donut).permit(:name, :description, :occassion, :type_of_donut, :donut_shop_id)
  end


 

end
