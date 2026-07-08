
# Merchant Webhook Security Configuration

Merchant-level fraud and refund safety settings.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookSecurityConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card_charge_cooldown` | `String` | Optional | ISO-8601 duration between card charge attempts. |
| `subscription_cooldown` | `String` | Optional | ISO-8601 duration between subscription charge attempts. |
| `idempotent_card_charge_cooldown` | `String` | Optional | ISO-8601 duration for reusing an idempotent card charge key. |
| `idempotent_subscription_cooldown` | `String` | Optional | ISO-8601 duration for reusing an idempotent subscription key. |
| `restrict_ip_after_failed_charge` | [`RestrictIpAfterFailedChargeConfig`](../../doc/models/restrict-ip-after-failed-charge-config.md) | Optional | IP restriction policy applied after repeated failed charges. |
| `inspect_suspicious_login_after` | `String` | Optional | Look-back period used to review suspicious login activity. |
| `refund_percent_limit` | `Float` | Optional | Maximum refund-to-sales percentage allowed before restriction. |
| `limit_charge_by_card_configuration` | [`MerchantWebhookLimitChargeByCardConfiguration`](../../doc/models/merchant-webhook-limit-charge-by-card-configuration.md) | Optional | Per-card velocity limit configuration. |
| `confirmation_required` | `TrueClass \| FalseClass` | Optional | Requires confirmation before protected refund actions proceed. |
| `min_refund_threshold` | `Integer` | Optional | Minimum refund amount, in minor units, subject to confirmation checks. |
| `limit_refund_by_sales` | [`MerchantWebhookLimitRefundBySalesConfiguration`](../../doc/models/merchant-webhook-limit-refund-by-sales-configuration.md) | Optional | Refund-limiting configuration based on sales history. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_security_configuration = MerchantWebhookSecurityConfiguration.new(
  card_charge_cooldown: 'PT5M',
  subscription_cooldown: 'PT10M',
  idempotent_card_charge_cooldown: 'idempotent_card_charge_cooldown6',
  idempotent_subscription_cooldown: 'idempotent_subscription_cooldown0',
  restrict_ip_after_failed_charge: RestrictIpAfterFailedChargeConfig.new(
    enabled: true,
    count: 5,
    cooldown: 'PT1H',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  refund_percent_limit: 100,
  confirmation_required: false,
  min_refund_threshold: 100,
  limit_refund_by_sales: MerchantWebhookLimitRefundBySalesConfiguration.new(
    enabled: true,
    period: 'monthly',
    rolling_window: true
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

