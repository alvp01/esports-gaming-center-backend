# config/application.rb

require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module EsportGamingCenterBackend
  class Application < Rails::Application
    config.load_defaults 7.1

    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore, key: '_esport_gaming_center_session'

    config.api_only = true
  end
end
