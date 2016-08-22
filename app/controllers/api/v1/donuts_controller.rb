class Api::V1::DonutsController < Api::V1::BaseController
  def show
    user = Donut.find(params[:id])

    render(json: Api::V1::UserSerializer.new(user).to_json)
  end
end