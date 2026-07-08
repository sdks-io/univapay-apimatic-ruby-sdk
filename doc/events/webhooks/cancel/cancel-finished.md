
# Cancel Finished

Fired when a cancellation request reaches a terminal status (`successful`, `failed`, `error`). The `data` field contains the full Cancel object.

## Headers

This event's request contains the following headers.

| Name | Description |
|  --- | --- |
| Idempotency-Key | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |
| Content-Type |  |

## Payload Type

This event's request payload is of type [CancelWebhookCallback](../../../../doc/models/cancel-webhook-callback.md).

## Payload Example

```json
{
  "id": "11ef0000-0000-4000-8000-000000000001",
  "event": "cancel_finished",
  "data": {
    "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
    "charge_id": "6efb4e5c-690a-40f3-a4f1-0e19c5f84e98",
    "store_id": "76cf4a64-02bc-4cb3-9a28-74622e5928a1",
    "status": "successful",
    "error": null,
    "metadata": {
      "order_id": "order_12345"
    },
    "mode": "live",
    "created_on": "2026-04-09T07:35:50.000000Z",
    "updated_on": "2026-04-09T07:36:00.000000Z",
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
# Implementation example of handling the `cancelFinished` event (with no signature verification) in Rails.

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
    handler = CancelHandler.new

    # Step 2: Parse the request into a typed event.
    event = handler.parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(CancelWebhookCallback) && event.event == 'cancel_finished'
      puts 'CancelFinished received'
      # TODO: Add cancelfinished handling
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

