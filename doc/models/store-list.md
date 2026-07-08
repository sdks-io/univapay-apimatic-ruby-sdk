
# Store List

Paginated store search result.

*This model accepts additional fields of type Object.*

## Structure

`StoreList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[StoreListItem]`](../../doc/models/store-list-item.md) | Optional | Store rows matching the current filter set. |
| `has_more` | `TrueClass \| FalseClass` | Optional | Whether another page is available. |
| `total_hits` | `Integer` | Optional | Total number of matching stores when available. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
store_list = StoreList.new(
  items: [
    StoreListItem.new(
      id: '11ef0000-0000-4000-8000-000000000022',
      name: 'Tokyo Store',
      merchant_name: 'Example Merchant',
      created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    StoreListItem.new(
      id: '11ef0000-0000-4000-8000-000000000023',
      name: 'Osaka Store',
      merchant_name: 'Example Merchant',
      created_on: DateTimeHelper.from_rfc3339('2026-04-10T09:12:30.000000Z'),
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

