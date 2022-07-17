class UsersController < ApplicationController
    def new

    end
    def create
        email=params[:username]
        password=params[:userpassword]
        User.create(
            :email=>email,
            :password_digest=> password
        )
        response = {
            :success => true
        }
        render json:response
    end
    def destroy
    end
end
