
# Token Response Konbini Data

Token Response Konbini Data schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponseKonbiniData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_name` | `String` | Optional | Customer name. |
| `convenience_store` | [`BaseKonbiniDataConvenienceStore`](../../doc/models/base-konbini-data-convenience-store.md) | Optional | Base Konbini Data Convenience Store schema. |
| `expiration_period` | `String` | Optional | ISO-8601 Duration (e.g., 'P7D'). Default is 30 days. |
| `expiration_time_shift` | `String` | Optional | Time shift applied to the expiration, typically pushing it to the end of the day in a specific timezone (e.g., '23:59:59.999999+09:00'). |
| `phone_number` | [`TokenResponsePhoneNumber`](../../doc/models/token-response-phone-number.md) | Optional | Token Response Phone Number schema. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_konbini_data = TokenResponseKonbiniData.new(
  customer_name: 'Taro Yamada',
  convenience_store: BaseKonbiniDataConvenienceStore::SEVEN_ELEVEN,
  expiration_period: 'P7D',
  expiration_time_shift: nil,
  phone_number: TokenResponsePhoneNumber.new(
    country_code: 81,
    local_number: '08012341234',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

