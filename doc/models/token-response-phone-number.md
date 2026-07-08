
# Token Response Phone Number

Token Response Phone Number schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponsePhoneNumber`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `country_code` | `Integer` | Optional | Returned as an integer in the response. |
| `local_number` | `String` | Optional | Local phone number. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_phone_number = TokenResponsePhoneNumber.new(
  country_code: 81,
  local_number: '08012341234',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

