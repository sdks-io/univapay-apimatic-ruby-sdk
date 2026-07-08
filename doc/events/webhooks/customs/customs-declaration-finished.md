
# Customs Declaration Finished

Fired when a customs declaration associated with a charge reaches a terminal state. The `data` field contains the CustomsDeclaration resource returned by the backend formatter.

## Headers

This event's request contains the following headers.

| Name | Description |
|  --- | --- |
| Idempotency-Key | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |
| Content-Type |  |

## Payload Type

This event's request payload is of type [CustomsDeclarationWebhookCallback](../../../../doc/models/customs-declaration-webhook-callback.md).

## Payload Example

```json
{
  "id": "11ef0000-0000-4000-8000-000000000001",
  "event": "customs_declaration_finished",
  "data": {
    "id": "11ef0000-0000-4000-8000-000000000040",
    "charge_id": "11ef0000-0000-4000-8000-000000000001",
    "merchant_id": "11ef0000-0000-4000-8000-000000000020",
    "store_id": "11ef0000-0000-4000-8000-000000000022",
    "mode": "test",
    "gateway": "wechat_online",
    "declaration": {
      "customs": "TOKYO",
      "merchant_customs_no": "1234567890",
      "certificate_id": "AB1234567",
      "certificate_name": "TARO YAMADA"
    },
    "declaration_result": {
      "approving_authority": "TOKYO",
      "trade_id": "wx_trade_12345",
      "transaction_id": "wx_txn_12345",
      "charge_transaction_id": "wx_charge_12345"
    },
    "status": "successful",
    "created_on": "2026-04-09T07:35:50.000000Z",
    "platform_id": "00000550-0000-0000-0000-000000000000",
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
# Implementation example of handling the `customsDeclarationFinished` event (with no signature verification) in Rails.

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
    handler = CustomsHandler.new

    # Step 2: Parse the request into a typed event.
    event = handler.parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(CustomsDeclarationWebhookCallback) && event.event == 'customs_declaration_finished'
      puts 'CustomsDeclarationFinished received'
      # TODO: Add customsdeclarationfinished handling
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

