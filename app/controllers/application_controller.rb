class ApplicationController < ActionController::Base
  include ActionController::Helpers
  include ::ActionController::Cookies

  skip_before_action :verify_authenticity_token
  helper_method [:current_user]

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
