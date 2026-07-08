
# Transaction Token Update Request Data

Transaction Token Update Request Data schema.

*This model accepts additional fields of type Object.*

## Structure

`TransactionTokenUpdateRequestData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cvv` | `String` | Optional | Update if RECURRING_USAGE_REQUIRES_CVV error occurs. |
| `cardholder` | `String` | Optional | Cardholder name. |
| `card_number` | `String` | Optional | Card number. |
| `exp_month` | `Integer` | Optional | Card expiration month. |
| `exp_year` | `Integer` | Optional | Card expiration year. |
| `line_1` | `String` | Optional | Primary street address line. |
| `line_2` | `String` | Optional | Secondary street address line. |
| `state` | `String` | Optional | State or prefecture. |
| `city` | `String` | Optional | City or locality. |
| `country` | `String` | Optional | Country code. |
| `zip` | `String` | Optional | Postal code. |
| `phone_number` | [`TransactionTokenUpdateRequestDataPhoneNumber`](../../doc/models/transaction-token-update-request-data-phone-number.md) | Optional | Transaction Token Update Request Data Phone Number schema. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
transaction_token_update_request_data = TransactionTokenUpdateRequestData.new(
  cvv: '123',
  cardholder: 'TARO YAMADA',
  card_number: '4242424242424242',
  exp_month: 12,
  exp_year: 2026,
  line1: '1-1-1',
  line2: 'Shibakoen',
  state: 'Tokyo',
  city: 'Minato',
  country: 'JP',
  zip: '105-0011',
  phone_number: TransactionTokenUpdateRequestDataPhoneNumber.new(
    country_code: '81',
    local_number: '08012341234'
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

