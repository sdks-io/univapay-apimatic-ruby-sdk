
# Subscription Completed

Fired when a subscription completes all of its scheduled payments. The `data` field contains the full Subscription object.

## Headers

This event's request contains the following headers.

| Name | Description |
|  --- | --- |
| Idempotency-Key | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |
| Content-Type |  |

## Payload Type

This event's request payload is of type [SubscriptionCompletedWebhookCallback](../../../../doc/models/subscription-completed-webhook-callback.md).

## Payload Example

```json
{
  "id": "11ef0000-0000-4000-8000-000000000001",
  "event": "subscription_completed",
  "data": {
    "id": "11ef335e-9aa5-c54a-8313-7f9847da313a",
    "store_id": "11edf541-c42d-653c-8c3d-dfe0a55f95c0",
    "transaction_token_id": "11ef32a7-3a71-8662-803f-1bc27702eeec",
    "amount": 1250,
    "currency": "USD",
    "amount_formatted": 12.5,
    "schedule_settings": {
      "start_on": "2024-07-01",
      "zone_id": "Asia/Tokyo",
      "preserve_end_of_month": false,
      "retry_interval": "P7D",
      "termination_mode": "on_next_payment"
    },
    "only_direct_currency": false,
    "first_charge_authorization_only": false,
    "status": "current",
    "metadata": {
      "order_id": "12345"
    },
    "mode": "test",
    "created_on": "2024-06-26T01:51:28.627023Z",
    "period": "monthly",
    "exampleAdditionalProperty": {
      "key1": "val1",
      "key2": "val2"
    }
  },
  "created_on": "2026-04-09T07:35:50.000000Z",
  "exampleAdditionalProperty": {
    "key1": "val1",
    "key2": "val2"
  }
}
```

## SDK Usage Example

```ruby
# Implementation example of handling the `subscriptionCompleted` event (with no signature verification) in Rails.

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
    handler = SubscriptionCompletedHandler.new

    # Step 2: Parse the request into a typed event.
    event = handler.parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(SubscriptionCompletedWebhookCallback) && event.event == 'subscription_completed'
      puts 'SubscriptionCompleted received'
      # TODO: Add subscriptioncompleted handling
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

## Accepted Server Responses

The server should responds with one of the following status codes:

| Status Code | Description |
|  --- | --- |
| 200 | Return 200 to acknowledge receipt of the event. Returns an empty JSON object. |

