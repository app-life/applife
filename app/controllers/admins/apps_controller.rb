class Admins::AppsController < ApplicationController

    def index
        @apps = App.all
        @q = Person.ransack(params[:q])
        @people = @q.result(distinct: true)
    end

    def create
        app = App.new(app_params)
        @app.save
        redirect_to admins_path
    end

    def new
        @app = App.new
    end

    def show
        @app = App.find(params[:id])
    end

    def edit
        @app = App.find(params[:id])
    end

    def update
        @app = App.find(params[:id])
        @app.update(app_params)
        redirect_to admins_apps_path
    end

    def destroy
        @app = App.find(params[:id])
        @app.destroy
        redirect_to admins_apps_path
    end

    private
    def app_params
      params.require(:app).permit(:title, :body, :image, :os_category, :price_category)
    end
end