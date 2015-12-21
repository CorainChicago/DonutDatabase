class DonutShopsController < ApplicationController

  def index
    @shops = DonutShop.all
  end

  
end
