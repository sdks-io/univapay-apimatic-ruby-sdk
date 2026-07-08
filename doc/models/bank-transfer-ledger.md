
# Bank Transfer Ledger

Single bank transfer ledger entry associated with a charge.

*This model accepts additional fields of type Object.*

## Structure

`BankTransferLedger`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `bank_ledger_type` | [`BankTransferLedgerBankLedgerType`](../../doc/models/bank-transfer-ledger-bank-ledger-type.md) | Optional | Bank Transfer Ledger Bank Ledger Type schema. |
| `amount` | `Integer` | Optional | Amount in the smallest currency unit. |
| `balance` | `Integer` | Optional | Current balance in the smallest currency unit. |
| `virtual_bank_account_holder_name` | `String` | Optional | Virtual bank account holder name. |
| `virtual_bank_account_number` | `String` | Optional | Virtual bank account number. |
| `virtual_account_id` | `String` | Optional | Virtual account id value. |
| `transaction_date` | `Date` | Optional | Transaction date. |
| `transaction_timestamp` | `DateTime` | Optional | Transaction timestamp. |
| `mode` | [`BankTransferLedgerMode`](../../doc/models/bank-transfer-ledger-mode.md) | Optional | Bank Transfer Ledger Mode schema. |
| `created_on` | `DateTime` | Optional | Timestamp when the resource was created. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
bank_transfer_ledger = BankTransferLedger.new(
  bank_ledger_type: BankTransferLedgerBankLedgerType::DEPOSIT,
  amount: 1000,
  balance: 1000,
  virtual_bank_account_holder_name: 'TARO YAMADA',
  virtual_bank_account_number: '1234567',
  virtual_account_id: 'va_12345',
  transaction_date: Date.iso8601('2026-04-09'),
  transaction_timestamp: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  mode: BankTransferLedgerMode::LIVE,
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

