
# Generic Metadata

A free-form dictionary for custom metadata.

*This model accepts additional fields of type [String | Float | TrueClass | FalseClass](../../doc/models/containers/generic-metadata-value.md).*

## Structure

`GenericMetadata`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `order_id` | `String` | Optional | Example of a custom metadata key. |
| `univapay_name` | `String` | Optional | Consumer name passed to payment processors that require it (e.g., konbini, bank transfer). |
| `univapay_phone_number` | `String` | Optional | Consumer phone number passed to payment processors that require it. |
| `additional_properties` | Hash[String, String \| Float \| TrueClass \| FalseClass] | Optional | Allowed values for metadata properties. |

## Example

```ruby
generic_metadata = GenericMetadata.new(
  order_id: '12345',
  univapay_name: 'univapay-name0',
  univapay_phone_number: 'univapay-phone-number4',
  additional_properties: {
    'exampleAdditionalProperty' => 'String4'
  }
)
```

