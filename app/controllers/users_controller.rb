class UsersController < ApplicationController
    def index
        users = User.all 
        render json: users
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user
        else
            render json: user.errors, status: 422
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy()
        render json: user
    end

    private
    def user_params
        params.require(:user).permit(:name, :age, :address, :email)
    end
end
