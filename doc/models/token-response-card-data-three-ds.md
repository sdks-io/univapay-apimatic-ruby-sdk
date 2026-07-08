
# Token Response Card Data Three Ds

Token Response Card Data Three Ds schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponseCardDataThreeDs`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enabled value. |
| `status` | [`TokenResponseCardDataThreeDsStatus`](../../doc/models/token-response-card-data-three-ds-status.md) | Optional | Token Response Card Data Three Ds Status schema. |
| `redirect_endpoint` | `String` | Optional | Redirect endpoint URL. |
| `redirect_id` | `UUID \| String` | Optional | Redirect identifier. |
| `exempted` | `TrueClass \| FalseClass` | Optional | Indicates if the 3DS check was exempted. When creating charge 3DS check will not be required. |
| `error` | [`PaymentError`](../../doc/models/payment-error.md) | Optional | Payment error details, or null if successful. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_card_data_three_ds = TokenResponseCardDataThreeDs.new(
  enabled: true,
  status: TokenResponseCardDataThreeDsStatus::SUCCESSFUL,
  redirect_endpoint: nil,
  redirect_id: nil,
  exempted: false,
  error: nil,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

