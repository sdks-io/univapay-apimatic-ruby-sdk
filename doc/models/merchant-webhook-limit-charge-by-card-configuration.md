
# Merchant Webhook Limit Charge by Card Configuration

Per-card velocity limit configuration.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookLimitChargeByCardConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `quantity_of_charges` | `Integer` | Optional | Maximum number of charges allowed in the time window. |
| `duration_window` | `String` | Optional | ISO-8601 duration for the rolling window. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_limit_charge_by_card_configuration = MerchantWebhookLimitChargeByCardConfiguration.new(
  quantity_of_charges: 5,
  duration_window: 'PT24H',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

