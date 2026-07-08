
# Merchant Webhook Checkout Configuration

Checkout field collection settings.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookCheckoutConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ec_email` | [`MerchantWebhookCheckoutToggle`](../../doc/models/merchant-webhook-checkout-toggle.md) | Optional | Checkout feature toggle. |
| `ec_products` | [`MerchantWebhookCheckoutToggle`](../../doc/models/merchant-webhook-checkout-toggle.md) | Optional | Checkout feature toggle. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_checkout_configuration = MerchantWebhookCheckoutConfiguration.new(
  ec_email: MerchantWebhookCheckoutToggle.new(
    enabled: true,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  ec_products: MerchantWebhookCheckoutToggle.new(
    enabled: true,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

