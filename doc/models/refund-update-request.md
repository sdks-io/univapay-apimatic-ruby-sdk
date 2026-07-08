
# Refund Update Request

Request body for updating a refund. All fields are optional. Omitted fields are left unchanged.

*This model accepts additional fields of type Object.*

## Structure

`RefundUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `message` | `String` | Optional | Update or clear the refund note. Send `null` to remove. |
| `reason` | [`RefundReasonRequest`](../../doc/models/refund-reason-request.md) | Optional | Merchant-settable refund reason, or `null` to remove it during update. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
refund_update_request = RefundUpdateRequest.new(
  metadata: GenericMetadata.new(
    order_id: '12345',
    univapay_name: 'univapay-name8',
    univapay_phone_number: 'univapay-phone-number2',
    additional_properties: {
      'exampleAdditionalProperty' => 'String4'
    }
  ),
  message: 'Updated reason note',
  reason: RefundReasonRequest::DUPLICATE,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

