
# Merchant Webhook Convenience Configuration

Convenience-store payment settings.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookConvenienceConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables convenience-store payments. |
| `expiration` | `String` | Optional | ISO-8601 duration before convenience payment expiry. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_convenience_configuration = MerchantWebhookConvenienceConfiguration.new(
  enabled: true,
  expiration: 'P3D',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

