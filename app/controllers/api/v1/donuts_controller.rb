class Api::V1::DonutsController < Api::V1::BaseController
  before_filter :authenticate_user!
  def show
    donut = Donut.find(params[:id])
    render(json: Api::V1::DonutSerializer.new(donut).to_json)
  end

   def index
    donuts = Donut.all
    render(json: donuts.each{|d| Api::V1::DonutSerializer.new(d).to_json})
  end
end