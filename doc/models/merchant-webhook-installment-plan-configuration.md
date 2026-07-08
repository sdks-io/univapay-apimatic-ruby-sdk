
# Merchant Webhook Installment Plan Configuration

Installment plan configuration.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookInstallmentPlanConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables installment plan features for eligible payments. |
| `card_processor` | [`CardProcessorInstallmentConfig`](../../doc/models/card-processor-installment-config.md) | Optional | Card-processor capabilities available for installment payments. |
| `supported_payment_types` | `Array[String]` | Optional | Payment types that can use installment plans. |
| `min_charge_amount` | [`MerchantWebhookMoneyAmount`](../../doc/models/merchant-webhook-money-amount.md) | Optional | Monetary amount object serialized by backend config models. |
| `max_payout_period` | `String` | Optional | Maximum payout delay allowed for installment settlements. |
| `only_with_processor` | `TrueClass \| FalseClass` | Optional | Restricts installment use to processor-backed flows. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_installment_plan_configuration = MerchantWebhookInstallmentPlanConfiguration.new(
  enabled: true,
  card_processor: CardProcessorInstallmentConfig.new(
    revolving: true,
    fixed_cycle: true,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
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
  only_with_processor: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

