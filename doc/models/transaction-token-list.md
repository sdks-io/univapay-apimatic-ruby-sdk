
# Transaction Token List

Paginated list of transaction tokens.

*This model accepts additional fields of type Object.*

## Structure

`TransactionTokenList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[TransactionTokenListItem]`](../../doc/models/transaction-token-list-item.md) | Optional | List of resources. |
| `has_more` | `TrueClass \| FalseClass` | Optional | Whether more results are available. |
| `total_hits` | `Integer` | Optional | Total number of matching resources. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
transaction_token_list = TransactionTokenList.new(
  items: [
    TransactionTokenListItem.new(
      id: '2fe23e45-f95d-4c95-9963-739070096443',
      store_id: '79e9504e-96d8-46ed-8d22-2e8b36238605',
      merchant_name: 'Test Merchant',
      store_name: 'Tokyo Store',
      email: 'taro@example.com',
      payment_type: 'card',
      active: true,
      mode: 'live',
      type: 'recurring',
      created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
      updated_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
      user_data: TransactionTokenListItemUserData.new(
        cardholder_name: 'TARO YAMADA',
        email: 'taro@example.com'
      ),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    TransactionTokenListItem.new(
      id: '3af34f56-a06e-4d06-aa74-84a181107554',
      store_id: '8bfa615f-a7e9-47fe-9e33-3f9c47349716',
      merchant_name: 'Test Merchant',
      store_name: 'Osaka Store',
      email: 'hanako@example.com',
      payment_type: 'card',
      active: true,
      mode: 'live',
      type: 'one_time',
      created_on: DateTimeHelper.from_rfc3339('2026-04-10T10:20:11Z'),
      updated_on: DateTimeHelper.from_rfc3339('2026-04-10T10:20:11Z'),
      user_data: TransactionTokenListItemUserData.new(
        cardholder_name: 'HANAKO SUZUKI',
        email: 'hanako@example.com'
      ),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  ],
  has_more: false,
  total_hits: 2,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

