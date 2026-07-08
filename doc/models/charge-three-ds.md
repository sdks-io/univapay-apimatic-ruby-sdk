
# Charge Three Ds

Charge Three Ds schema.

*This model accepts additional fields of type Object.*

## Structure

`ChargeThreeDs`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `redirect_endpoint` | `String` | Optional | Redirect endpoint URL. |
| `mode` | `String` | Optional | Processing mode for the resource. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge_three_ds = ChargeThreeDs.new(
  redirect_endpoint: 'redirect_endpoint4',
  mode: 'mode8',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

