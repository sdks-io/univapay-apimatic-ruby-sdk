
# Transaction Token List Item User Data

Transaction Token List Item User Data schema.

*This model accepts additional fields of type Object.*

## Structure

`TransactionTokenListItemUserData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `cardholder_name` | `String` | Optional | Cardholder name value. |
| `email` | `String` | Optional | Customer email address. |
| `brand` | `String` | Optional | Brand or network name. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
transaction_token_list_item_user_data = TransactionTokenListItemUserData.new(
  cardholder_name: 'TARO YAMADA',
  email: 'user@example.com',
  brand: 'visa',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

