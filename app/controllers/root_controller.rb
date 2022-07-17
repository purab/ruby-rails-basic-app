class RootController < ApplicationController
    def index
        render "index"
    end

    def contact
        redirect_to("/about")
        puts "-----------------------------------------"
        puts "contact in server"
        #render "contact"
    end
    def about
        puts "-----------------------------------------"
        puts "about in server"
        render "about"
    end

    def api
        @response = {
            :status => 200,
            :message => "hello world"
        }
        #render html: @response
        #render xml: @response
        render json: @response
    end

    def user
        #render json:params
        render json:params[:id]
    end
end
