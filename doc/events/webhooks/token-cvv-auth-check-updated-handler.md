## Token Cvv Auth Check Updated Handler

Token CVV auth check updated event.

Events in this group are uniquely identified by the `event` field.

## Events

Events available in this group. Subscribe to receive webhook notifications when these events occur.

| Name | Description | Event Identifier |
|  --- | --- | --- |
| [tokenCvvAuthCheckUpdated](../../../doc/events/webhooks/token_cvv_auth_check_updated/token-cvv-auth-check-updated.md) | Fired when the CVV auth check status for a token changes. The `data` field contains the full TransactionToken object. | token_cvv_auth_check_updated |

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
    handler = TokenCvvAuthCheckUpdatedHandler.new

    # Step 2: Parse the request into a typed event.
    event = handler.parse_event(request)

    # Step 3: Pattern match on the event types and handle it.
    if event.is_a?(TokenCvvAuthCheckUpdatedWebhookCallback) && event.event == 'token_cvv_auth_check_updated'
      puts 'TokenCvvAuthCheckUpdated received'
      # TODO: Add tokencvvauthcheckupdated handling
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

