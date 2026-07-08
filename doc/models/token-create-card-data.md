
# Token Create Card Data

Token Create Card Data schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenCreateCardData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cardholder` | `String` | Optional | Cardholder name. |
| `card_number` | `String` | Required | Card number. |
| `exp_month` | `String` | Required | Card expiration month. |
| `exp_year` | `String` | Required | Card expiration year. |
| `cvv` | `String` | Optional | Card security code. |
| `line_1` | `String` | Optional | Primary street address line. |
| `line_2` | `String` | Optional | Secondary street address line. |
| `state` | `String` | Optional | State or prefecture. |
| `city` | `String` | Optional | City or locality. |
| `country` | `String` | Optional | Country code. |
| `zip` | `String` | Optional | Postal code. |
| `phone_number` | [`TokenCreatePhoneNumber`](../../doc/models/token-create-phone-number.md) | Optional | Token Create Phone Number schema. |
| `cvv_authorize` | [`TokenCreateCardDataCvvAuthorize`](../../doc/models/token-create-card-data-cvv-authorize.md) | Optional | Token Create Card Data Cvv Authorize schema. |
| `three_ds` | [`TokenCreateCardDataThreeDs`](../../doc/models/token-create-card-data-three-ds.md) | Optional | Token Create Card Data Three Ds schema. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_create_card_data = TokenCreateCardData.new(
  card_number: '4242424242424242',
  exp_month: '12',
  exp_year: '2026',
  cardholder: 'cardholder6',
  cvv: 'cvv8',
  line1: 'line12',
  line2: 'line24',
  state: 'state4',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

