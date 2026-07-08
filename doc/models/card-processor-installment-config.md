
# Card Processor Installment Config

Card-processor capabilities available for installment payments.

*This model accepts additional fields of type Object.*

## Structure

`CardProcessorInstallmentConfig`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `revolving` | `TrueClass \| FalseClass` | Optional | Allows revolving payments through supported processors. |
| `fixed_cycle` | `TrueClass \| FalseClass` | Optional | Allows fixed-cycle installment payments through supported processors. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
card_processor_installment_config = CardProcessorInstallmentConfig.new(
  revolving: true,
  fixed_cycle: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

