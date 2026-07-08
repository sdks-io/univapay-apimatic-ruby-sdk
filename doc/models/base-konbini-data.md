
# Base Konbini Data

Base Konbini Data schema.

*This model accepts additional fields of type Object.*

## Structure

`BaseKonbiniData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customer_name` | `String` | Optional | Customer name. |
| `convenience_store` | [`BaseKonbiniDataConvenienceStore`](../../doc/models/base-konbini-data-convenience-store.md) | Optional | Base Konbini Data Convenience Store schema. |
| `expiration_period` | `String` | Optional | ISO-8601 Duration (e.g., 'P7D'). Default is 30 days. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
base_konbini_data = BaseKonbiniData.new(
  customer_name: 'Taro Yamada',
  convenience_store: BaseKonbiniDataConvenienceStore::SEVEN_ELEVEN,
  expiration_period: 'P7D',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

