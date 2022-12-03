class MembersController < ApplicationController
    before_action :authenticate_user!
    def index
        render json: {status: {code: 200, message: 'Current logged in user'}, data: current_user}
    end
end 
