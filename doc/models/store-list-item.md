
# Store List Item

Store row returned by store list queries.

*This model accepts additional fields of type Object.*

## Structure

`StoreListItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Store identifier. |
| `name` | `String` | Optional | Store display name. |
| `merchant_name` | `String` | Optional | Merchant display name associated with the store row. |
| `created_on` | `DateTime` | Optional | Timestamp when the store was created. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
store_list_item = StoreListItem.new(
  id: '11ef0000-0000-4000-8000-000000000022',
  name: 'Tokyo Store',
  merchant_name: 'Example Merchant',
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

