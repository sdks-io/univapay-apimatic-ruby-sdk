
# Bank Transfer Status Data

Data payload for `bank_transfer_status_updated` webhook events. Contains the bank transfer extension fields inlined alongside amount and metadata.

*This model accepts additional fields of type Object.*

## Structure

`BankTransferStatusData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Bank transfer charge extension ID. |
| `charge_id` | `UUID \| String` | Optional | ID of the associated charge. |
| `payment_status` | [`BankTransferPaymentStatus`](../../doc/models/bank-transfer-payment-status.md) | Optional | Payment status of a bank transfer charge. |
| `latest_deposit_date` | `DateTime` | Optional | Date of the most recent deposit. |
| `created_on` | `DateTime` | Optional | When the bank transfer extension record was created. |
| `latest_deposit_amount` | `Integer` | Optional | Amount of the most recent deposit in minor currency units. |
| `balance` | `Integer` | Optional | Current outstanding balance in minor currency units. |
| `currency` | `String` | Optional | ISO 4217 currency code. |
| `amount` | `Integer` | Optional | Total charge amount in minor currency units. |
| `amount_difference` | `Integer` | Optional | Difference between paid and expected amount (positive = over, negative = under). |
| `token_metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `charge_metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
bank_transfer_status_data = BankTransferStatusData.new(
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
)
```

