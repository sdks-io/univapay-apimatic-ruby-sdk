
# Cancel

Represents a cancellation request for a charge.

*This model accepts additional fields of type Object.*

## Structure

`Cancel`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Unique identifier for the cancel. |
| `charge_id` | `UUID \| String` | Optional | ID of the charge this cancel is associated with. |
| `store_id` | `UUID \| String` | Optional | ID of the store. |
| `status` | [`CancelStatus`](../../doc/models/cancel-status.md) | Optional | Current status of the cancel operation. |
| `error` | [`PaymentError`](../../doc/models/payment-error.md) | Optional | Payment error details, or null if successful. |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `mode` | [`ChargeMode`](../../doc/models/charge-mode.md) | Optional | Charge Mode schema. |
| `created_on` | `DateTime` | Optional | Timestamp when the cancel was created. |
| `updated_on` | `DateTime` | Optional | Timestamp when the cancel was last updated. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
cancel = Cancel.new(
  id: 'a1b2c3d4-e5f6-7890-abcd-ef1234567890',
  charge_id: '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98',
  store_id: '76cf4a64-02bc-4cb3-9a28-74622e5928a1',
  status: CancelStatus::PENDING,
  error: PaymentError.new(
    code: 301,
    message: 'Card number error.',
    detail: 'The provided card number failed validation.',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  metadata: GenericMetadata.new(
    order_id: '12345'
  ),
  mode: ChargeMode::LIVE,
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  updated_on: DateTimeHelper.from_rfc3339('2026-04-09T07:36:00Z'),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

