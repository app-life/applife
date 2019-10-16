class AppsController < ApplicationController

    def index
        @apps = App.all
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
        @apps = App.all
    end

    def about
    end

    private
    def app_params
      params.require(:app).permit(:title, :body, :image)
    end
end