# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  respond_to :json

  private
  
  def respond_with  (resource, options = {})
    if resource.persisted?
      accessToken = encode_token(id: resource.id)
      render json: { status: {code: 200, message: 'Signed up successfully'}, data: resource, accessToken: accessToken }
    else
      render json: { status: {code: 500, message: 'User could not be created'}, errors: resource.errors.full_mesages}
    end
  end 

end
