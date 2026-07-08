
# Subscription Update Schedule Settings

Schedule settings that can be updated on a subscription.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionUpdateScheduleSettings`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `termination_mode` | [`SubscriptionTerminationMode`](../../doc/models/subscription-termination-mode.md) | Optional | Subscription Termination Mode schema.<br><br>**Default**: `SubscriptionTerminationMode::IMMEDIATE` |
| `start_on` | `DateTime` | Optional | Subscription start date. Used to change the first actual charge date  for subscriptions that initially only registered a payment method. |
| `retry_interval` | `String` | Optional | ISO-8601 Duration for retry interval if payment fails  (e.g., P3D for 3 days, PT48H for 48 hours). |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_update_schedule_settings = SubscriptionUpdateScheduleSettings.new(
  termination_mode: SubscriptionTerminationMode::IMMEDIATE,
  start_on: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  retry_interval: 'retry_interval6',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

