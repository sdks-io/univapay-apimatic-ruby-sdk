
# Customs Declaration Webhook Result

Result payload returned by the customs declaration formatter.

*This model accepts additional fields of type Object.*

## Structure

`CustomsDeclarationWebhookResult`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `approving_authority` | `String` | Optional | Customs authority that approved the declaration. |
| `trade_id` | `String` | Optional | Gateway trade identifier. |
| `transaction_id` | `String` | Optional | Gateway transaction identifier for customs. |
| `charge_transaction_id` | `String` | Optional | Gateway charge transaction identifier linked to the declaration. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
customs_declaration_webhook_result = CustomsDeclarationWebhookResult.new(
  approving_authority: 'TOKYO',
  trade_id: 'wx_trade_12345',
  transaction_id: 'wx_txn_12345',
  charge_transaction_id: 'wx_charge_12345',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

