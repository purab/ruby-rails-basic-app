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
        @message = "user registered successfully"
        @success = true
        render "new"
    end
    def destroy
    end
end
