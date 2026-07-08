
# Refund Webhook Callback Extension

Refund-specific webhook payload extension.

*This model accepts additional fields of type Object.*

## Structure

`RefundWebhookCallbackExtension`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `data` | [`Refund`](../../doc/models/refund.md) | Optional | Represents a refund issued against a charge. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
refund_webhook_callback_extension = RefundWebhookCallbackExtension.new(
  data: Refund.new(
    id: 'b4d9fea9-c9b3-4e76-a25d-b61f7e4821b6',
    store_id: '76cf4a64-02bc-4cb3-9a28-74622e5928a1',
    charge_id: '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98',
    status: RefundStatus::SUCCESSFUL,
    amount: 1000,
    currency: 'JPY',
    amount_formatted: 1000,
    reason: RefundReasonResponse::CUSTOMER_REQUEST,
    message: 'Customer returned item',
    error: nil,
    metadata: GenericMetadata.new(
      order_id: 'order_12345'
    ),
    mode: ChargeMode::LIVE,
    created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
    updated_on: DateTimeHelper.from_rfc3339('2026-04-09T07:36:00.000000Z'),
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

