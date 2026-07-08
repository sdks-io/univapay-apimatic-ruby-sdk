require "hanami/router"
require "hanami/controller"
require "json"
require 'univapay_client_sdk'

include UnivapayClientSdk

# Version handling for Hanami
if RUBY_VERSION < "3.0"
  # Hanami 1.x
  class HanamiChargeUpdatedApp
    include Hanami::Action

    def handle_event(request, response)
      # Step 1: Create the handler.
      handler = ChargeUpdatedHandler.new

      # Step 2: Parse the request into a typed event.
      event = handler.parse_event(request)
    
      # Step 3: Pattern match on the event types and handle it.
      if event.is_a?(ChargeUpdatedWebhookCallback) && event.event == 'charge_updated'
        self.status = 200
          self.body = { message: "ChargeUpdated callback received" }.to_json
      elsif event.is_a?(UnknownEvent)
        self.status = 400
          self.body = { message: "Unknown event callback received" }.to_json
      else
        self.status = 400
          self.body = { message: "default callback received" }.to_json
      end
  end
  end
else
  # Hanami 2.x
  class HanamiChargeUpdatedApp < Hanami::Action
    def handle_event(request, response)
      # Step 1: Create the handler.
      handler = ChargeUpdatedHandler.new

      # Step 2: Parse the request into a typed event.
      event = handler.parse_event(request)
    
      # Step 3: Pattern match on the event types and handle it.
      if event.is_a?(ChargeUpdatedWebhookCallback) && event.event == 'charge_updated'
        self.status = 200
          self.body = { message: "ChargeUpdated callback received" }.to_json
      elsif event.is_a?(UnknownEvent)
        self.status = 400
          self.body = { message: "Unknown event callback received" }.to_json
      else
        self.status = 400
          self.body = { message: "default callback received" }.to_json
      end
  end
  end
end

ChargeUpdatedRouter = Hanami::Router.new do
  post '/charge_updated', to: HanamiChargeUpdatedApp.new
end