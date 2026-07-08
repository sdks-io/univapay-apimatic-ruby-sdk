
# Refund

Represents a refund issued against a charge.

*This model accepts additional fields of type Object.*

## Structure

`Refund`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Unique identifier. |
| `store_id` | `UUID \| String` | Optional | Store identifier. |
| `charge_id` | `UUID \| String` | Optional | Charge identifier. |
| `status` | [`RefundStatus`](../../doc/models/refund-status.md) | Optional | Current status of the refund. `pending`: The refund has been created and is being processed. `successful`: The refund was processed successfully. `failed`: The refund was rejected by the gateway. `error`: An unexpected error occurred during processing. |
| `amount` | `Integer` | Optional | Refund amount in the smallest currency unit (e.g., cents for USD, yen for JPY). |
| `currency` | `String` | Optional | ISO-4217 currency code. Must match the charged currency. |
| `amount_formatted` | `Float` | Optional | Refund amount formatted for display. |
| `reason` | [`RefundReasonResponse`](../../doc/models/refund-reason-response.md) | Optional | Refund reason returned by the API, or `null` when unset. |
| `message` | `String` | Optional | Optional free-text note about the refund. |
| `error` | [`PaymentError`](../../doc/models/payment-error.md) | Optional | Payment error details, or null if successful. |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `mode` | [`ChargeMode`](../../doc/models/charge-mode.md) | Optional | Charge Mode schema. |
| `created_on` | `DateTime` | Optional | Timestamp when the resource was created. |
| `updated_on` | `DateTime` | Optional | Timestamp when the resource was last updated. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
refund = Refund.new(
  id: 'b4d9fea9-c9b3-4e76-a25d-b61f7e4821b6',
  store_id: '76cf4a64-02bc-4cb3-9a28-74622e5928a1',
  charge_id: '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98',
  status: RefundStatus::PENDING,
  amount: 1000,
  currency: 'JPY',
  amount_formatted: 1000,
  reason: RefundReasonResponse::CUSTOMER_REQUEST,
  message: 'Customer returned item',
  error: PaymentError.new(
    code: 301,
    message: 'Card number error.',
    detail: 'The provided card number failed validation.'
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

