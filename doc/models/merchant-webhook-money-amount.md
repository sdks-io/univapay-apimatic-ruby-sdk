
# Merchant Webhook Money Amount

Monetary amount object serialized by backend config models.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookMoneyAmount`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Optional | Amount in minor currency units. |
| `currency` | `String` | Optional | ISO 4217 currency code. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_money_amount = MerchantWebhookMoneyAmount.new(
  amount: 1000,
  currency: 'JPY',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

