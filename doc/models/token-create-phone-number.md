
# Token Create Phone Number

Token Create Phone Number schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenCreatePhoneNumber`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `country_code` | `String` | Required | Country code as string (e.g., '1' or '81'). |
| `local_number` | `String` | Required | Local phone number.<br><br>**Constraints**: *Maximum Length*: `15` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_create_phone_number = TokenCreatePhoneNumber.new(
  country_code: '81',
  local_number: '08012341234',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

