
# Charge Capture Request

Request payload for capturing an authorized charge.

*This model accepts additional fields of type Object.*

## Structure

`ChargeCaptureRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | The amount to capture. Must be less than or equal to the authorized amount. |
| `currency` | `String` | Required | ISO-4217 currency code. Must exactly match the currency used during authorization. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge_capture_request = ChargeCaptureRequest.new(
  amount: 1000,
  currency: 'JPY',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

