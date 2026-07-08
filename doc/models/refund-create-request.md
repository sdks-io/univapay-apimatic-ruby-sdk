
# Refund Create Request

Request body for creating a refund against a successful charge. Konbini and bank transfer charges cannot be refunded.

*This model accepts additional fields of type Object.*

## Structure

`RefundCreateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `amount` | `Integer` | Required | Amount to refund in the smallest currency unit. Must be greater than 0 and not exceed the charged amount. Partial refunds are supported for most payment methods. |
| `currency` | `String` | Required | ISO-4217 currency code. Must exactly match the currency of the original charge. |
| `reason` | [`RefundReasonRequest`](../../doc/models/refund-reason-request.md) | Optional | The reason for the refund (merchant-settable values). `duplicate`: A duplicate charge was made. `fraud`: The charge is fraudulent. `customer_request`: The customer requested the refund. |
| `message` | `String` | Optional | Optional free-text note about the reason for the refund. |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
refund_create_request = RefundCreateRequest.new(
  amount: 1000,
  currency: 'JPY',
  reason: RefundReasonRequest::CUSTOMER_REQUEST,
  message: 'Customer returned item',
  metadata: GenericMetadata.new,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

