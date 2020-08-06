if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_fierce-taiga-99651", domain: "https://fierce-taiga-99651.herokuapp.com/"
else
  Rails.application.config.session_store :cookie_store, key: "_tiltzin-api"
end