class UsersController < ApplicationController
    def index
        # render plain: "GOATED - index action"
        # @users = User.all
        # render json: @users
        render json: User.all
    end

    # def create
    #     render json: params
    # end

    def create
        user = User.new(params.require(:user).permit(:user_attributes_here))
        # replace the `user_attributes_here` with the actual attribute keys
        user.save!
        render json: user
    end

    def show
        render json: params
        
    end
end