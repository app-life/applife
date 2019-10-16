class Admins::AppsController < ApplicationController

    def index
    end

    def create
        app = App.new(app_params)
        @app.save
        redirect_to admins_path
    end

    def new
        @apps = App.new
    end

    def show
        @app = App.find(params[:id])
    end

    private
    def apps_params
      params.require(:app).permit(:title, :body, :image)
    end
end