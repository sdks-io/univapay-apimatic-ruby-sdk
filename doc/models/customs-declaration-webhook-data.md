
# Customs Declaration Webhook Data

Customs declaration payload delivered in `customs_declaration_finished` webhooks. Platform-level deliveries may include `platform_id` and `updated_on`.

*This model accepts additional fields of type Object.*

## Structure

`CustomsDeclarationWebhookData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Customs declaration identifier. |
| `charge_id` | `UUID \| String` | Optional | Charge identifier associated with the declaration. |
| `merchant_id` | `UUID \| String` | Optional | Merchant identifier. |
| `store_id` | `UUID \| String` | Optional | Store identifier. |
| `platform_id` | `UUID \| String` | Optional | Platform identifier, included on platform-level deliveries. |
| `mode` | `String` | Optional | Processing mode. |
| `gateway` | `String` | Optional | Gateway that processed the declaration. |
| `declaration` | [`CustomsDeclarationWebhookDeclaration`](../../doc/models/customs-declaration-webhook-declaration.md) | Optional | WeChat customs declaration payload returned by the backend formatter. |
| `declaration_result` | [`CustomsDeclarationWebhookResult`](../../doc/models/customs-declaration-webhook-result.md) | Optional | Result payload returned by the customs declaration formatter. |
| `status` | [`CustomsDeclarationWebhookStatus`](../../doc/models/customs-declaration-webhook-status.md) | Optional | Customs declaration status returned by the backend. |
| `error` | [`CustomsDeclarationWebhookError`](../../doc/models/customs-declaration-webhook-error.md) | Optional | Error payload returned when customs declaration processing fails. |
| `created_on` | `DateTime` | Optional | Timestamp when the declaration was created. |
| `updated_on` | `DateTime` | Optional | Timestamp when the declaration was last updated, included on platform-level deliveries. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
customs_declaration_webhook_data = CustomsDeclarationWebhookData.new(
  id: '11ef0000-0000-4000-8000-000000000040',
  charge_id: '11ef0000-0000-4000-8000-000000000001',
  merchant_id: '11ef0000-0000-4000-8000-000000000020',
  store_id: '11ef0000-0000-4000-8000-000000000022',
  platform_id: '00001610-0000-0000-0000-000000000000',
  mode: 'test',
  gateway: 'wechat_online',
  declaration: CustomsDeclarationWebhookDeclaration.new(
    customs: 'TOKYO',
    merchant_customs_no: '1234567890',
    certificate_id: 'AB1234567',
    certificate_name: 'TARO YAMADA'
  ),
  declaration_result: CustomsDeclarationWebhookResult.new(
    approving_authority: 'TOKYO',
    trade_id: 'wx_trade_12345',
    transaction_id: 'wx_txn_12345',
    charge_transaction_id: 'wx_charge_12345'
  ),
  status: CustomsDeclarationWebhookStatus::SUCCESSFUL,
  error: nil,
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

