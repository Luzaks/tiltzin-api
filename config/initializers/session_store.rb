if Rails.env == 'production'
  Rails.application.config.session_store :cookie_store, key: '_tiltzin_api_session', domain: 'fierce-taiga-99651.herokuapp.com/'
else
  Rails.application.config.session_store :cookie_store, key: '_tiltzin_api_session'
end
