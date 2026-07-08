
# Token Response Card Data

Token Response Card Data schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponseCardData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `card` | [`TokenResponseCardDataCard`](../../doc/models/token-response-card-data-card.md) | Optional | Token Response Card Data Card schema. |
| `billing` | [`TokenResponseCardDataBilling`](../../doc/models/token-response-card-data-billing.md) | Optional | Token Response Card Data Billing schema. |
| `cvv_authorize` | [`TokenResponseCardDataCvvAuthorize`](../../doc/models/token-response-card-data-cvv-authorize.md) | Optional | Token Response Card Data Cvv Authorize schema. |
| `cvv_authorize_check` | [`TokenResponseCardDataCvvAuthorizeCheck`](../../doc/models/token-response-card-data-cvv-authorize-check.md) | Optional | Token Response Card Data Cvv Authorize Check schema. |
| `three_ds` | [`TokenResponseCardDataThreeDs`](../../doc/models/token-response-card-data-three-ds.md) | Optional | Token Response Card Data Three Ds schema. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_card_data = TokenResponseCardData.new(
  card: TokenResponseCardDataCard.new(
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
  ),
  billing: TokenResponseCardDataBilling.new(
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
  ),
  cvv_authorize: TokenResponseCardDataCvvAuthorize.new(
    enabled: true,
    status: 'successful',
    charge_id: nil,
    credentials_id: nil,
    currency: 'JPY',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  cvv_authorize_check: TokenResponseCardDataCvvAuthorizeCheck.new(
    status: 'successful',
    charge_id: nil,
    date: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  three_ds: TokenResponseCardDataThreeDs.new(
    enabled: true,
    status: TokenResponseCardDataThreeDsStatus::SUCCESSFUL,
    redirect_endpoint: nil,
    redirect_id: nil,
    exempted: false,
    error: nil,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

