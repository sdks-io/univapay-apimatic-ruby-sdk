
# Token Response Card Data Card

Token Response Card Data Card schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponseCardDataCard`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cardholder` | `String` | Optional | Cardholder name. |
| `exp_month` | `Integer` | Optional | Card expiration month. |
| `exp_year` | `Integer` | Optional | Card expiration year. |
| `card_bin` | `String` | Optional | Card bin value. |
| `last_four` | `String` | Optional | Last four value. |
| `brand` | `String` | Optional | Brand or network name. |
| `card_type` | `String` | Optional | Card type value. |
| `country` | `String` | Optional | Country code. |
| `category` | `String` | Optional | Category value. |
| `issuer` | `String` | Optional | Issuer value. |
| `sub_brand` | `String` | Optional | Sub brand value. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_card_data_card = TokenResponseCardDataCard.new(
  cardholder: 'TARO YAMADA',
  exp_month: 12,
  exp_year: 2026,
  card_bin: '424242',
  last_four: '4242',
  brand: 'visa',
  card_type: 'credit',
  country: 'JP',
  category: 'standard',
  issuer: nil,
  sub_brand: 'none',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

