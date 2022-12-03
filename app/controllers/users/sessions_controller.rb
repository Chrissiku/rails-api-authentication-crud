# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  respond_to
  
  private

  def respond_with  (resource, options = {})
    if resource.persisted?
      render json: { status: {code: 200, message: 'Signed in successfully'}, data: resource}
    else
      render json: { status: {code: 500, message: 'User could not be signed in'}, errors: resource.errors.full_mesages}
    end
  end

  def respond_to_on_destroy
    jwt_payload = JWT.decode(request.headers['Authorization'].split(' ')[1], Rails.application.credentials.fetch(:secret_key_base)).first
    current_user = User.find(jwt_payload['sub'])

    if current_user
      render json: { status: {code: 200, message: 'Signed out successfully'}, data: current_user}
    else
      render json: { status: {code: 401, message: 'User could not be signed out'}, errors: current_user.errors.full_mesages}
    end
  end
end
