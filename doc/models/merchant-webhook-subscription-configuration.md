
# Merchant Webhook Subscription Configuration

Subscription feature configuration.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookSubscriptionConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables subscription payments. |
| `failed_charges_to_cancel` | `Integer` | Optional | Number of failed charges allowed before cancellation. |
| `suspend_on_cancel` | `TrueClass \| FalseClass` | Optional | Suspends the subscription when its latest charge is canceled. |
| `allow_merchant_amount_patch` | `TrueClass \| FalseClass` | Optional | Allows merchants to update scheduled subscription amounts. |
| `allow_merchant_due_date_patch` | `TrueClass \| FalseClass` | Optional | Allows merchants to update scheduled subscription due dates. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_subscription_configuration = MerchantWebhookSubscriptionConfiguration.new(
  enabled: true,
  failed_charges_to_cancel: 3,
  suspend_on_cancel: true,
  allow_merchant_amount_patch: false,
  allow_merchant_due_date_patch: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

