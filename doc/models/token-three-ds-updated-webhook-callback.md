
# Token Three Ds Updated Webhook Callback

Webhook envelope for the token_three_d_s_updated event.

*This model accepts additional fields of type Object.*

## Structure

`TokenThreeDsUpdatedWebhookCallback`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Required | Unique ID of this webhook delivery. |
| `event` | `String` | Required, Constant | Event type discriminator — always `token_three_d_s_updated` for this callback.<br><br>**Value**: `'token_three_d_s_updated'` |
| `data` | [`TransactionToken`](../../doc/models/transaction-token.md) | Optional | Stored transaction token resource. |
| `created_on` | `DateTime` | Required | Timestamp when the event was fired. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_three_ds_updated_webhook_callback = TokenThreeDsUpdatedWebhookCallback.new(
  id: '11ef0000-0000-4000-8000-000000000001',
  event: 'token_three_d_s_updated',
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
  data: TransactionToken.new(
    id: '6426bbd2-17bd-41bf-883b-1fe970db48ee',
    store_id: 'fc264608-9a9e-495e-844e-a08129a81af4',
    email: 'test@univapay.com',
    payment_type: TransactionTokenPaymentType::CARD,
    active: true,
    mode: TransactionTokenMode::LIVE,
    type: TransactionTokenType::RECURRING,
    confirmed: true,
    metadata: {
      'customer_id' => nil
    },
    created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
    updated_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

