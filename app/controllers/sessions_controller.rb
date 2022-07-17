class SessionsController < ApplicationController
    def new
    end
    def create
        email = params[:email]
        password = params[:userpassword]
        #User.find (email) if it exists then match for password else throw error
        #if it matchest then create a sessions
        user = User.find_by(:email => email) 
        if user && user.password_digest == password
            response={
                :loggedin=>true
            }            
        else
            response={
                :loggedin=>false
            }
        render json:response
        end
    end
    def destroy
    end
    
end
