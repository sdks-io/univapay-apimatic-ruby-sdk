
# Cancel Webhook Callback

Webhook envelope whose `data` payload is a Cancel resource.

*This model accepts additional fields of type Object.*

## Structure

`CancelWebhookCallback`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `event` | [`CancelEvent`](../../doc/models/cancel-event.md) | Optional | Event type discriminator — always `cancel_finished` for this callback. |
| `id` | `UUID \| String` | Required | Unique ID of this webhook delivery. |
| `created_on` | `DateTime` | Required | Timestamp when the event was fired. |
| `data` | [`Cancel`](../../doc/models/cancel.md) | Optional | Represents a cancellation request for a charge. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
cancel_webhook_callback = CancelWebhookCallback.new(
  id: '11ef0000-0000-4000-8000-000000000001',
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
  event: CancelEvent::CANCEL_FINISHED,
  data: Cancel.new(
    id: 'a1b2c3d4-e5f6-7890-abcd-ef1234567890',
    charge_id: '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98',
    store_id: '76cf4a64-02bc-4cb3-9a28-74622e5928a1',
    status: CancelStatus::SUCCESSFUL,
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

