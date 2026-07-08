
# Bank Transfer Status Updated

Fired when the payment status of a bank transfer charge changes (e.g., when a deposit is received and matched against the expected amount). The `data` field contains a `BankTransferStatusData` object with the extension record, deposit amounts, and originating charge/token metadata.

## Headers

This event's request contains the following headers.

| Name | Description |
|  --- | --- |
| Idempotency-Key | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |
| Content-Type |  |

## Payload Type

This event's request payload is of type [BankTransferStatusWebhookCallback](../../../../doc/models/bank-transfer-status-webhook-callback.md).

## Payload Example

```json
{
  "id": "11ef0000-0000-4000-8000-000000000001",
  "event": "bank_transfer_status_updated",
  "data": {
    "id": "11ef0000-0000-4000-8000-000000000002",
    "charge_id": "11ef0000-0000-4000-8000-000000000001",
    "payment_status": "exact",
    "latest_deposit_date": "2026-04-09T07:35:50.000000Z",
    "created_on": "2026-04-09T07:35:50.000000Z",
    "latest_deposit_amount": 1000,
    "balance": 0,
    "currency": "JPY",
    "amount": 1000,
    "amount_difference": 0,
    "token_metadata": {
      "order_id": "12345"
    },
    "charge_metadata": {
      "order_id": "order_12345"
    },
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
# Implementation example of handling the `bankTransferStatusUpdated` event (with no signature verification) in Rails.

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
    handler = BankTransferHandler.new

    # Step 2: Parse the request into a typed event.
    event = handler.parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(BankTransferStatusWebhookCallback) && event.event == 'bank_transfer_status_updated'
      puts 'BankTransferStatusUpdated received'
      # TODO: Add banktransferstatusupdated handling
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

