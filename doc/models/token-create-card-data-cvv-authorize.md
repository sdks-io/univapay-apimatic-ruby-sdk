
# Token Create Card Data Cvv Authorize

Token Create Card Data Cvv Authorize schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenCreateCardDataCvvAuthorize`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enabled value.<br><br>**Default**: `false` |
| `currency` | `String` | Optional | ISO-4217 currency code. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_create_card_data_cvv_authorize = TokenCreateCardDataCvvAuthorize.new(
  enabled: false,
  currency: 'JPY',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

