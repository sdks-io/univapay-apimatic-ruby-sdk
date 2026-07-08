
# Bank Transfer Status Webhook Callback

Webhook envelope whose `data` payload is a BankTransferStatusData resource.

*This model accepts additional fields of type Object.*

## Structure

`BankTransferStatusWebhookCallback`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `event` | [`BankTransferEvent`](../../doc/models/bank-transfer-event.md) | Optional | Event type discriminator — always `bank_transfer_status_updated` for this callback. |
| `id` | `UUID \| String` | Required | Unique ID of this webhook delivery. |
| `created_on` | `DateTime` | Required | Timestamp when the event was fired. |
| `data` | [`BankTransferStatusData`](../../doc/models/bank-transfer-status-data.md) | Optional | Data payload for `bank_transfer_status_updated` webhook events. Contains the bank transfer extension fields inlined alongside amount and metadata. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
bank_transfer_status_webhook_callback = BankTransferStatusWebhookCallback.new(
  id: '11ef0000-0000-4000-8000-000000000001',
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
  event: BankTransferEvent::BANK_TRANSFER_STATUS_UPDATED,
  data: BankTransferStatusData.new(
    id: '11ef0000-0000-4000-8000-000000000002',
    charge_id: '11ef0000-0000-4000-8000-000000000001',
    payment_status: BankTransferPaymentStatus::EXACT,
    latest_deposit_date: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
    created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
    latest_deposit_amount: 1000,
    balance: 0,
    currency: 'JPY',
    amount: 1000,
    amount_difference: 0,
    token_metadata: GenericMetadata.new(
      order_id: '12345'
    ),
    charge_metadata: GenericMetadata.new(
      order_id: 'order_12345'
    ),
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

