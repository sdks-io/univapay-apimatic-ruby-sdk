
# Merchant Webhook Subscription Plan Configuration

Subscription plan configuration.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookSubscriptionPlanConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables limited-cycle subscription plans. |
| `fixed_cycle` | `TrueClass \| FalseClass` | Optional | Allows plans limited by a fixed number of cycles. |
| `fixed_cycle_amount` | `TrueClass \| FalseClass` | Optional | Allows plans limited by a total target amount. |
| `supported_payment_types` | `Array[String]` | Optional | Payment types that can use subscription plans. |
| `min_charge_amount` | [`MerchantWebhookMoneyAmount`](../../doc/models/merchant-webhook-money-amount.md) | Optional | Monetary amount object serialized by backend config models. |
| `max_payout_period` | `String` | Optional | Maximum payout delay allowed for subscription plan settlements. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_subscription_plan_configuration = MerchantWebhookSubscriptionPlanConfiguration.new(
  enabled: true,
  fixed_cycle: true,
  fixed_cycle_amount: true,
  supported_payment_types: [
    'card'
  ],
  min_charge_amount: MerchantWebhookMoneyAmount.new(
    amount: 3000,
    currency: 'JPY',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  max_payout_period: 'P12M',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

