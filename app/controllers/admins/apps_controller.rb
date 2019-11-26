class Admins::AppsController < ApplicationController
    before_action :authenticate_admin!

    def index
        @q = App.ransack(params[:q])
        @app = @q.result(distinct: true)
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

    def os_category
        @apps = App.where(os_category: params[:category])
    end

    def price_category
        @apps = App.where(price_category: params[:category])
    end

    private
    def app_params
      params.require(:app).permit(:title, :body, :image, :os_category, :price_category)
    end
end