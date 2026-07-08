
# Transaction Token Update Request Data Phone Number

Transaction Token Update Request Data Phone Number schema.

*This model accepts additional fields of type Object.*

## Structure

`TransactionTokenUpdateRequestDataPhoneNumber`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `country_code` | `String` | Optional | Telephone country code. |
| `local_number` | `String` | Optional | Local phone number. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
transaction_token_update_request_data_phone_number = TransactionTokenUpdateRequestDataPhoneNumber.new(
  country_code: '81',
  local_number: '08012341234',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

