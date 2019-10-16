class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  def index
  end

  ##時間変更##
  config.time_zone = 'Tokyo'
end