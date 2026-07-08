
# Customs Declaration Webhook Callback

Webhook envelope whose `data` payload is a CustomsDeclaration resource.

*This model accepts additional fields of type Object.*

## Structure

`CustomsDeclarationWebhookCallback`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `event` | [`CustomsDeclarationEvent`](../../doc/models/customs-declaration-event.md) | Optional | Event type discriminator — always `customs_declaration_finished` for this callback. |
| `id` | `UUID \| String` | Required | Unique ID of this webhook delivery. |
| `created_on` | `DateTime` | Required | Timestamp when the event was fired. |
| `data` | [`CustomsDeclarationWebhookData`](../../doc/models/customs-declaration-webhook-data.md) | Optional | Customs declaration payload delivered in `customs_declaration_finished` webhooks. Platform-level deliveries may include `platform_id` and `updated_on`. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
customs_declaration_webhook_callback = CustomsDeclarationWebhookCallback.new(
  id: '11ef0000-0000-4000-8000-000000000001',
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
  event: CustomsDeclarationEvent::CUSTOMS_DECLARATION_FINISHED,
  data: CustomsDeclarationWebhookData.new(
    id: '11ef0000-0000-4000-8000-000000000040',
    charge_id: '11ef0000-0000-4000-8000-000000000001',
    merchant_id: '11ef0000-0000-4000-8000-000000000020',
    store_id: '11ef0000-0000-4000-8000-000000000022',
    platform_id: '00000550-0000-0000-0000-000000000000',
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
    created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

