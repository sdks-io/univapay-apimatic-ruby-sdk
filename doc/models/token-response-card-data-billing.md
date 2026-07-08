
# Token Response Card Data Billing

Token Response Card Data Billing schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponseCardDataBilling`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `line_1` | `String` | Optional | Primary street address line. |
| `line_2` | `String` | Optional | Secondary street address line. |
| `state` | `String` | Optional | State or prefecture. |
| `city` | `String` | Optional | City or locality. |
| `country` | `String` | Optional | Country code. |
| `zip` | `String` | Optional | Postal code. |
| `phone_number` | [`TokenResponsePhoneNumber`](../../doc/models/token-response-phone-number.md) | Optional | Token Response Phone Number schema. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_card_data_billing = TokenResponseCardDataBilling.new(
  line1: '1-1-1',
  line2: 'Shibakoen',
  state: 'Tokyo',
  city: 'Minato',
  country: 'JP',
  zip: '105-0011',
  phone_number: TokenResponsePhoneNumber.new(
    country_code: 81,
    local_number: '08012341234'
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

