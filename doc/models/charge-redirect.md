
# Charge Redirect

Charge Redirect schema.

*This model accepts additional fields of type Object.*

## Structure

`ChargeRedirect`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `endpoint` | `String` | Optional | Endpoint value. |
| `redirect_id` | `UUID \| String` | Optional | Redirect identifier. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge_redirect = ChargeRedirect.new(
  endpoint: 'endpoint2',
  redirect_id: '00001f64-0000-0000-0000-000000000000',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

