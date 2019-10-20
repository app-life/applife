class AppsController < ApplicationController

    def index
        @most_viewed = App.order('impressions_count DESC').take(3)
    end


    def create
        app = App.new(app_params)
        app.save
        redirect_to admins_path
    end

    def new
        @apps = App.new
    end

    def show
        @app = App.find(params[:id])
        impressionist(@app, nil, :unique => [:session_hash])
        @post_comments = PostComment.all
        @post_comment = PostComment.new({app:@app})
    end

    def about
    end

    def os_category
        @apps = App.where(os_category: params[:category] )
    end

    def price_category
        @apps = App.where(price_category: params[:category])
    end

    private
    def app_params
      params.require(:app,).permit(:title, :body, :image, :genre, :price, :price_category, :os_category)
    end
end