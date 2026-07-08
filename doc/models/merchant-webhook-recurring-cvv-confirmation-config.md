
# Merchant Webhook Recurring Cvv Confirmation Config

CVV confirmation rules for recurring token charges.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookRecurringCvvConfirmationConfig`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables recurring-charge CVV confirmation checks. |
| `threshold` | [`Array[MerchantWebhookMoneyAmount]`](../../doc/models/merchant-webhook-money-amount.md) | Optional | Amount thresholds that trigger CVV confirmation. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_recurring_cvv_confirmation_config = MerchantWebhookRecurringCvvConfirmationConfig.new(
  enabled: false,
  threshold: [
    nil
  ],
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

