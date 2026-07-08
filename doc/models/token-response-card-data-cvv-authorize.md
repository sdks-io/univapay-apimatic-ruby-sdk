
# Token Response Card Data Cvv Authorize

Token Response Card Data Cvv Authorize schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponseCardDataCvvAuthorize`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enabled value. |
| `status` | `String` | Optional | Current status of the resource. |
| `charge_id` | `UUID \| String` | Optional | Charge identifier. |
| `credentials_id` | `UUID \| String` | Optional | Credentials identifier. |
| `currency` | `String` | Optional | ISO-4217 currency code. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_card_data_cvv_authorize = TokenResponseCardDataCvvAuthorize.new(
  enabled: true,
  status: 'successful',
  charge_id: nil,
  credentials_id: nil,
  currency: 'JPY',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

