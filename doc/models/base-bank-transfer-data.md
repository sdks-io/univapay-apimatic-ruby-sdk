
# Base Bank Transfer Data

Base Bank Transfer Data schema.

*This model accepts additional fields of type Object.*

## Structure

`BaseBankTransferData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `brand` | `String` | Optional | The bank brand identifier (e.g., 'aozora_bank'). |
| `expiration_period` | `String` | Optional | ISO 8601 duration format (e.g., 'PT168H'). |
| `expiration_time_shift` | `String` | Optional | Time shift applied to the expiration, typically pushing it to the end of the day  in a specific timezone (e.g., '23:59:59+09:00'). |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
base_bank_transfer_data = BaseBankTransferData.new(
  brand: 'aozora_bank',
  expiration_period: 'PT168H',
  expiration_time_shift: '23:59:59+09:00',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

