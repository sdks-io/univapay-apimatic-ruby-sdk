
# Cancel Update Request

Request body for updating a cancel. Only `metadata` is settable by merchants. All fields are optional; omitted fields are left unchanged.

*This model accepts additional fields of type Object.*

## Structure

`CancelUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
cancel_update_request = CancelUpdateRequest.new(
  metadata: GenericMetadata.new(
    order_id: '12345',
    univapay_name: 'univapay-name8',
    univapay_phone_number: 'univapay-phone-number2',
    additional_properties: {
      'exampleAdditionalProperty' => 'String4'
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

