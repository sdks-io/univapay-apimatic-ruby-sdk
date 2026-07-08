
# Subscription Suspend Request

Request body for suspending a subscription. The `schedule_settings.termination_mode`  field controls when the suspension takes effect.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionSuspendRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `schedule_settings` | [`SuspendScheduleSettings`](../../doc/models/suspend-schedule-settings.md) | Optional | Schedule-related settings. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_suspend_request = SubscriptionSuspendRequest.new(
  schedule_settings: SuspendScheduleSettings.new(
    termination_mode: SubscriptionTerminationMode::ON_NEXT_PAYMENT,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

