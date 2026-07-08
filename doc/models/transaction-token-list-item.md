
# Transaction Token List Item

Transaction token entry returned in list responses.

*This model accepts additional fields of type Object.*

## Structure

`TransactionTokenListItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Unique identifier. |
| `store_id` | `UUID \| String` | Optional | Store identifier. |
| `merchant_name` | `String` | Optional | Merchant display name. |
| `store_name` | `String` | Optional | Store display name. |
| `email` | `String` | Optional | Customer email address. |
| `payment_type` | `String` | Optional | Payment method type. |
| `active` | `TrueClass \| FalseClass` | Optional | Whether the resource is active. |
| `mode` | `String` | Optional | Processing mode for the resource. |
| `type` | `String` | Optional | Type of the resource. |
| `created_on` | `DateTime` | Optional | Timestamp when the resource was created. |
| `updated_on` | `DateTime` | Optional | Timestamp when the resource was last updated. |
| `user_data` | [`TransactionTokenListItemUserData`](../../doc/models/transaction-token-list-item-user-data.md) | Optional | Transaction Token List Item User Data schema. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
transaction_token_list_item = TransactionTokenListItem.new(
  id: '2fe23e45-f95d-4c95-9963-739070096443',
  store_id: '79e9504e-96d8-46ed-8d22-2e8b36238605',
  merchant_name: 'Test Merchant',
  store_name: 'Tokyo Store',
  email: 'user@example.com',
  payment_type: 'card',
  active: true,
  mode: 'live',
  type: 'one_time',
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  updated_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  user_data: TransactionTokenListItemUserData.new(
    cardholder_name: 'TARO YAMADA',
    email: 'user@example.com',
    brand: 'visa'
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

