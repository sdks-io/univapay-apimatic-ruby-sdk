
# Merchant Webhook Transfer Schedule Configuration

Transfer schedule configuration inherited by the merchant.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookTransferScheduleConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `wait_period` | `String` | Optional | ISO-8601 period before charges become payable. |
| `period` | `String` | Optional | Transfer period selected for payouts. |
| `full_period_required` | `TrueClass \| FalseClass` | Optional | Whether the first transfer period must be fully completed. |
| `day_of_week` | `String` | Optional | Payout day of week when using weekly schedules. |
| `week_of_month` | `Integer` | Optional | Week of month used by monthly schedules. |
| `day_of_month` | `Integer` | Optional | Day of month used by monthly schedules. |
| `weekly_closing_day` | `String` | Optional | Weekly closing day for balance aggregation. |
| `weekly_payout_day` | `String` | Optional | Weekly payout day. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_transfer_schedule_configuration = MerchantWebhookTransferScheduleConfiguration.new(
  wait_period: 'P7D',
  period: 'weekly',
  full_period_required: false,
  day_of_week: 'day_of_week6',
  week_of_month: 124,
  weekly_closing_day: 'sunday',
  weekly_payout_day: 'friday',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

