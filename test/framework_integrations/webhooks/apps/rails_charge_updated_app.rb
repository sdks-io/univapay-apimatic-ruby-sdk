require_relative '../../rails_app_test_helper'

Rails.application.routes.draw do
  post "/charge_updated", to: "charge_updated#receive"
end

class ChargeUpdatedController < ActionController::API
  def receive
    # Step 1: Create the handler.
    handler = ChargeUpdatedHandler.new

    # Step 2: Parse the request into a typed event.
    event = handler.parse_event(request)
    
    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(ChargeUpdatedWebhookCallback) && event.event == 'charge_updated'
      render json: { message: 'ChargeUpdated callback received' }, status: 200
    elsif event.is_a?(UnknownEvent)
      render json: { message: 'Unknown event callback received' }, status: 400
    else
      render json: { message: 'default callback received' }, status: 400
    end
  end
end