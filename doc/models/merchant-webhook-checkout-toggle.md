
# Merchant Webhook Checkout Toggle

Checkout feature toggle.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookCheckoutToggle`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables this checkout field in hosted payment flows. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_checkout_toggle = MerchantWebhookCheckoutToggle.new(
  enabled: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

