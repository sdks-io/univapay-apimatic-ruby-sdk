
# Subscription Plan Settings

Configuration for limited-cycle subscriptions (Univapay side).

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionPlanSettings`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `plan_type` | [`PlanSettingsType`](../../doc/models/plan-settings-type.md) | Optional | Plan type selector. |
| `fixed_cycles` | `Integer` | Optional | Number of cycles for fixed_cycles plan. |
| `fixed_cycle_amount` | `Integer` | Optional | Total target amount for fixed_cycle_amount plan. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_plan_settings = SubscriptionPlanSettings.new(
  plan_type: PlanSettingsType::FIXED_CYCLES,
  fixed_cycles: 212,
  fixed_cycle_amount: 22,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

