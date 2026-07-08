
# Merchant Webhook Limit Refund by Sales Configuration

Refund-limiting configuration based on sales history.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookLimitRefundBySalesConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables sales-based refund limit checks. |
| `period` | `String` | Optional | Sales aggregation period used to evaluate refund limits. |
| `rolling_window` | `TrueClass \| FalseClass` | Optional | Uses a rolling window instead of fixed calendar periods. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_limit_refund_by_sales_configuration = MerchantWebhookLimitRefundBySalesConfiguration.new(
  enabled: true,
  period: 'monthly',
  rolling_window: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

