
# Token Create Card Data Three Ds

Token Create Card Data Three Ds schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenCreateCardDataThreeDs`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enabled value. |
| `redirect_endpoint` | `String` | Optional | Redirect endpoint URL. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_create_card_data_three_ds = TokenCreateCardDataThreeDs.new(
  enabled: false,
  redirect_endpoint: 'redirect_endpoint4',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

