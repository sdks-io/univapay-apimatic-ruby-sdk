
# Token Response Bank Transfer Data

Token Response Bank Transfer Data schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponseBankTransferData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `brand` | `String` | Optional | The bank brand identifier (e.g., 'aozora_bank'). |
| `expiration_period` | `String` | Optional | ISO 8601 duration format (e.g., 'PT168H'). |
| `expiration_time_shift` | `String` | Optional | Time shift applied to the expiration, typically pushing it to the end of the day  in a specific timezone (e.g., '23:59:59+09:00'). |
| `bank_code` | `String` | Optional | Bank code value. |
| `bank_name` | `String` | Optional | Bank name value. |
| `branch_code` | `String` | Optional | Bank branch code. |
| `branch_name` | `String` | Optional | Bank branch name. |
| `account_number` | `String` | Optional | Bank account number. |
| `account_holder_name` | `String` | Optional | Bank account holder name. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_bank_transfer_data = TokenResponseBankTransferData.new(
  brand: 'aozora_bank',
  expiration_period: 'PT168H',
  expiration_time_shift: '23:59:59+09:00',
  bank_code: '0310',
  bank_name: 'GMOあおぞらネット銀行',
  branch_code: '123',
  branch_name: 'Test Branch',
  account_number: '1234567',
  account_holder_name: 'TARO YAMADA',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

