class Api::V1::SessionsController < Api::V1::BaseController
  def create
    user = User.find_by(email: create_params[:email])
    if user && user.authenticate(create_params[:password])
      render(
        json: Api::V1::SessionSerializer.new(user, root: false).to_json,
        status: 201
      )
    else
      render json: { error: 'Issue with the email or password' }, status: 401
    end
  end

  private
  def create_params
    params.permit(:email, :password)
  end
end