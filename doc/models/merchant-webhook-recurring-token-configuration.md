
# Merchant Webhook Recurring Token Configuration

Recurring token configuration inherited by the merchant.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookRecurringTokenConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `recurring_type` | `String` | Optional | Merchant recurring-token privilege. |
| `charge_wait_period` | `String` | Optional | ISO-8601 duration to wait before first recurring charge. |
| `card_charge_cvv_confirmation` | [`MerchantWebhookRecurringCvvConfirmationConfig`](../../doc/models/merchant-webhook-recurring-cvv-confirmation-config.md) | Optional | CVV confirmation rules for recurring token charges. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_recurring_token_configuration = MerchantWebhookRecurringTokenConfiguration.new(
  recurring_type: 'infinite',
  charge_wait_period: 'P7D',
  card_charge_cvv_confirmation: MerchantWebhookRecurringCvvConfirmationConfig.new(
    enabled: false,
    threshold: [
      nil
    ],
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

