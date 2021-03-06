class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :set_search

  def set_search
    @q = App.ransack(params[:q])
    @apps = @q.result(distinct: true)
  end

  def after_sign_up_path_for(resource)
  	admins_apps_path(current_user)
  end

  ##時間変更##
  config.time_zone = 'Tokyo'
end