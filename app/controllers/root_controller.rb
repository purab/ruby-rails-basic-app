class RootController < ApplicationController
    def index
        @posts = Post.all
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
    def add
        @post = Post.new
        @post.title= params[:title]
        @post.description= params[:description]
        @post.save
        @response = {
            :status => 200,
            :message => "saved post successfully."
        }
        #render json: @response
        @posts = Post.all
        render "index"
    end
end
