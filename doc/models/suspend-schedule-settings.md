
# Suspend Schedule Settings

Schedule-related settings.

*This model accepts additional fields of type Object.*

## Structure

`SuspendScheduleSettings`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `termination_mode` | [`SubscriptionTerminationMode`](../../doc/models/subscription-termination-mode.md) | Optional | Subscription Termination Mode schema.<br><br>**Default**: `SubscriptionTerminationMode::IMMEDIATE` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
suspend_schedule_settings = SuspendScheduleSettings.new(
  termination_mode: SubscriptionTerminationMode::IMMEDIATE,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

