
# Merchant Webhook Online Configuration

Online payment settings.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookOnlineConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables online redirect and wallet payment flows. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_online_configuration = MerchantWebhookOnlineConfiguration.new(
  enabled: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

