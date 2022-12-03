class ApiController < ApplicationController
    before_action :authenticate_user!
    rescue_from CanCan::AccessDenied do |exception|
        render json: {status: {code: 403, message: "Forbidden"}, errors: exception.message}
    end
end