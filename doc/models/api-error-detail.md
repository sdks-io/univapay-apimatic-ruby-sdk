
# Api Error Detail

Structured detail entry describing a single API validation or business error.

*This model accepts additional fields of type Object.*

## Structure

`ApiErrorDetail`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `field` | `String` | Optional | The field name of the parameter that caused the error (lower_snake_case). |
| `reason` | `String` | Optional | Detailed reason for the nested error (UPPER_SNAKE_CASE or English description). |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
api_error_detail = ApiErrorDetail.new(
  field: 'card_number',
  reason: 'INVALID_CARD_NUMBER',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

