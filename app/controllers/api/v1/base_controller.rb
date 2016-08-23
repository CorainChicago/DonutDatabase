class Api::V1::BaseController < ApplicationController
  protect_from_forgery with: :null_session

  before_action :destroy_session
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def destroy_session
    request.session_options[:skip] = true
  end


  def not_found
    return api_error(status: 404, errors: 'Sorry, the record was not found')
  end

  # private
  #   def authenticate_user_from_token!
  #     if !@json['api_token']
  #       render nothing: true, status: :unauthorized
  #     else
  #       @user = nil
  #       User.find_each do |u|
  #         if Devise.secure_compare(u.api_token, @json['api_token'])
  #          @user = u
  #        end
  #      end
  #    end
  #  end

  #  def parse_request
  #    @json = JSON.parse(request.body.read)
  #  end
end
