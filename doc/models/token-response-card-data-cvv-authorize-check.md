
# Token Response Card Data Cvv Authorize Check

Token Response Card Data Cvv Authorize Check schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponseCardDataCvvAuthorizeCheck`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `status` | `String` | Optional | Current status of the resource. |
| `charge_id` | `UUID \| String` | Optional | Charge identifier. |
| `date` | `DateTime` | Optional | Date value. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_card_data_cvv_authorize_check = TokenResponseCardDataCvvAuthorizeCheck.new(
  status: 'successful',
  charge_id: nil,
  date: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

