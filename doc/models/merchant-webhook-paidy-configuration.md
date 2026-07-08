
# Merchant Webhook Paidy Configuration

Paidy payment settings.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookPaidyConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables Paidy payments. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_paidy_configuration = MerchantWebhookPaidyConfiguration.new(
  enabled: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

