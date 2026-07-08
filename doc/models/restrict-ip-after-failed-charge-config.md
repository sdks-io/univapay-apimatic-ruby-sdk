
# Restrict Ip After Failed Charge Config

IP restriction policy applied after repeated failed charges.

*This model accepts additional fields of type Object.*

## Structure

`RestrictIpAfterFailedChargeConfig`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables temporary IP restrictions after repeated failures. |
| `count` | `Integer` | Optional | Number of failed charges allowed before restriction starts. |
| `cooldown` | `String` | Optional | ISO-8601 duration that the IP restriction remains active. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
restrict_ip_after_failed_charge_config = RestrictIpAfterFailedChargeConfig.new(
  enabled: true,
  count: 5,
  cooldown: 'PT1H',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

