class MembersController < ApplicationController
    before_action :authenticate_user!
    skip_before_action :authenticate_user!, only: [:all]
    def index
        render json: {status: {code: 200, message: 'Current logged in user'}, data: current_user}
    end

    def all
        render json: {status: {code: 200, message: 'All users'}, data: User.all}
    end
end 
