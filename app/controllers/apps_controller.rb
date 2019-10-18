class AppsController < ApplicationController

    def index
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
        # @apps = App.all
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
      params.require(:app).permit(:title, :body, :image, :genre, :price, :price_category, :os_category)
    end
end