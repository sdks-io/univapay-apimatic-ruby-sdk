require 'sinatra'
require 'json'
require 'univapay_client_sdk'

include UnivapayClientSdk

class SinatraChargeUpdatedApp < Sinatra::Base
  post '/charge_updated' do
    # Step 1: Create the handler.
    handler = ChargeUpdatedHandler.new

    # Step 2: Parse the request into a typed event.
    event = handler.parse_event(request)
  
    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(ChargeUpdatedWebhookCallback) && event.event == 'charge_updated'
        content_type :json
          [200, { message: "ChargeUpdated callback received" }.to_json]
    elsif event.is_a?(UnknownEvent)
        content_type :json
          [400, { message: "Unknown event callback received" }.to_json]
    else
        content_type :json
          [400, { message: "default callback received" }.to_json]
    end
  end
end