require 'rails'
require 'action_controller/railtie'
require 'univapay_client_sdk'

include UnivapayClientSdk

class RailsApp < Rails::Application
  config.secret_key_base = "test"
  config.eager_load = false
  config.hosts.clear
end

Rails.application = RailsApp
Rails.application.initialize!