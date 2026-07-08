## Subscription Created Handler

Subscription created event.

Events in this group are uniquely identified by the `event` field.

## Events

Events available in this group. Subscribe to receive webhook notifications when these events occur.

| Name | Description | Event Identifier |
|  --- | --- | --- |
| [subscriptionCreated](../../../doc/events/webhooks/subscription_created/subscription-created.md) | Fired when a new subscription is created and its first payment has been initiated. The `data` field contains the full Subscription object. | subscription_created |

## SDK Usage Example

```ruby
# Implementation example for handling the `Webhooks` events with Rails
# (no signature verification).

require 'rails'
require 'action_controller/railtie'
require 'univapay_client_sdk'

include UnivapayClientSdk

# Define route
Rails.application.routes.draw do
  post '/webhooks/receive', to: 'webhooks#receive'
end

# Define controller
class WebhooksController < ActionController::API
  def receive
    # Step 1: Create the handler.
    handler = SubscriptionCreatedHandler.new

    # Step 2: Parse the request into a typed event.
    event = handler.parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(SubscriptionCreatedWebhookCallback) && event.event == 'subscription_created'
      puts 'SubscriptionCreated received'
      # TODO: Add subscriptioncreated handling
    elsif event.is_a?(UnknownEvent)
      puts 'Unknown event received'
      # TODO: Add unknown event handling
    else
      puts 'default received'
      # TODO: Add default handling
    end

    # Step 4: Return 200 OK to acknowledge receipt.
    head :ok
  end
end
```

