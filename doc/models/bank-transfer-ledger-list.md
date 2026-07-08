
# Bank Transfer Ledger List

Paginated list of bank transfer ledger entries.

*This model accepts additional fields of type Object.*

## Structure

`BankTransferLedgerList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[BankTransferLedger]`](../../doc/models/bank-transfer-ledger.md) | Optional | List of resources. |
| `has_more` | `TrueClass \| FalseClass` | Optional | Whether more results are available. |
| `total_hits` | `Integer` | Optional | Total number of matching resources. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
bank_transfer_ledger_list = BankTransferLedgerList.new(
  items: [
    BankTransferLedger.new(
      bank_ledger_type: BankTransferLedgerBankLedgerType::PAYMENT,
      amount: 1000,
      balance: 0,
      virtual_bank_account_holder_name: 'test holder name',
      virtual_bank_account_number: '1234567',
      virtual_account_id: 'test account id',
      transaction_date: Date.iso8601('2024-06-25'),
      transaction_timestamp: DateTimeHelper.from_rfc3339('2024-06-25T07:29:16.367347Z'),
      mode: BankTransferLedgerMode::TEST,
      created_on: DateTimeHelper.from_rfc3339('2024-06-25T07:29:16.373181Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    BankTransferLedger.new(
      bank_ledger_type: BankTransferLedgerBankLedgerType::DEPOSIT,
      amount: 1000,
      balance: 1000,
      virtual_bank_account_holder_name: 'test holder name',
      virtual_bank_account_number: '1234567',
      virtual_account_id: 'test account id',
      transaction_date: Date.iso8601('2024-06-25'),
      transaction_timestamp: DateTimeHelper.from_rfc3339('2024-06-25T07:29:16.36731Z'),
      mode: BankTransferLedgerMode::TEST,
      created_on: DateTimeHelper.from_rfc3339('2024-06-25T07:29:16.368093Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  ],
  has_more: false,
  total_hits: 2,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

