class ApplicationController < ActionController::Base
  include ActionController::Helpers
  include ::ActionController::Cookies

  skip_before_action :verify_authenticity_token
  include sessions_helper
end
