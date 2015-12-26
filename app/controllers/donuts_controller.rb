class DonutsController < ApplicationController

  def new
  end

  def create
    @donut = Donut.new(donut_params)
    @donut.donut_shop_id = DonutShop.find_by(name: :donut_shop_params)
    if @donut.save
      render 'donuts/show'
    end

  end

  def show
    @donut = Donut.find(params)
  end

  def index
    @donuts = Donut.all
  end

  private

  def donut_params
    params.require(:donut).permit(:name, :description)
  end

  def donut_shop_params
    params.require(:donut).permit(:donut_shop_name)
  end

end
