
# Merchant Webhook User Transactions Configuration

Merchant transaction notification settings.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookUserTransactionsConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables merchant transaction notifications. |
| `notify_customer` | `TrueClass \| FalseClass` | Optional | Sends transaction notifications to the customer. |
| `notify_on_test` | `TrueClass \| FalseClass` | Optional | Sends notifications for test-mode events. |
| `notify_on_recurring_token_creation` | `TrueClass \| FalseClass` | Optional | Sends notifications when a recurring token is created. |
| `notify_on_recurring_token_cvv_failed` | `TrueClass \| FalseClass` | Optional | Sends notifications when recurring-token CVV confirmation fails. |
| `notify_on_webhook_failure` | `TrueClass \| FalseClass` | Optional | Sends notifications after repeated webhook delivery failures. |
| `notify_on_webhook_disabled` | `TrueClass \| FalseClass` | Optional | Sends notifications when webhook delivery is disabled. |
| `notify_user_on_failed_transactions` | `TrueClass \| FalseClass` | Optional | Sends merchant notifications for failed transactions. |
| `notify_customer_on_failed_transactions` | `TrueClass \| FalseClass` | Optional | Sends customer notifications for failed transactions. |
| `notify_user_on_convenience_instructions` | `TrueClass \| FalseClass` | Optional | Sends merchant notifications with convenience-store payment instructions. |
| `notify_on_subscriptions` | `TrueClass \| FalseClass` | Optional | Sends notifications for subscription lifecycle events. |
| `notify_on_authorizations` | `TrueClass \| FalseClass` | Optional | Sends notifications for authorization-only charges. |
| `notify_on_cvv_authorizations` | `TrueClass \| FalseClass` | Optional | Sends notifications for CVV authorization events. |
| `notify_on_cancels` | `TrueClass \| FalseClass` | Optional | Sends notifications when charges are canceled. |
| `customer_refer_link_enabled` | `TrueClass \| FalseClass` | Optional | Includes customer self-service links in supported notifications. |
| `notify_on_convenience_expiry` | `TrueClass \| FalseClass` | Optional | Sends notifications when convenience payments expire. |
| `notify_on_recurring_token_creation_with_three_ds` | `TrueClass \| FalseClass` | Optional | Sends notifications when recurring tokens are created through 3-D Secure. |
| `notify_on_chargebacks` | `TrueClass \| FalseClass` | Optional | Sends notifications for chargeback events. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_user_transactions_configuration = MerchantWebhookUserTransactionsConfiguration.new(
  enabled: true,
  notify_customer: true,
  notify_on_test: false,
  notify_on_recurring_token_creation: false,
  notify_on_recurring_token_cvv_failed: false,
  notify_on_webhook_failure: true,
  notify_on_webhook_disabled: true,
  notify_on_subscriptions: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

