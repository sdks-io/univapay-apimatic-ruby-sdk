
# Transaction Token

Stored transaction token resource.

*This model accepts additional fields of type Object.*

## Structure

`TransactionToken`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Unique identifier. |
| `store_id` | `UUID \| String` | Optional | Store identifier. |
| `email` | `String` | Optional | Customer email address. |
| `payment_type` | [`TransactionTokenPaymentType`](../../doc/models/transaction-token-payment-type.md) | Optional | Transaction Token Payment Type schema. |
| `active` | `TrueClass \| FalseClass` | Optional | Whether the resource is active. |
| `mode` | [`TransactionTokenMode`](../../doc/models/transaction-token-mode.md) | Optional | Transaction Token Mode schema. |
| `type` | [`TransactionTokenType`](../../doc/models/transaction-token-type.md) | Optional | Transaction Token Type schema. |
| `usage_limit` | `String` | Optional | Usage limit applied to the token. |
| `confirmed` | `TrueClass \| FalseClass` | Optional | Whether the token has been confirmed. |
| `metadata` | Hash[String, String \| Float \| TrueClass \| FalseClass] \| nil | Optional | Transaction Token Metadata Additional Properties schema. |
| `created_on` | `DateTime` | Optional | Timestamp when the resource was created. |
| `updated_on` | `DateTime` | Optional | Timestamp when the resource was last updated. |
| `last_used_on` | `DateTime` | Optional | Timestamp when the token was last used. |
| `data` | [TokenResponseCardData](../../doc/models/token-response-card-data.md) \| [TokenResponseKonbiniData](../../doc/models/token-response-konbini-data.md) \| [TokenResponseOnlineData](../../doc/models/token-response-online-data.md) \| [TokenResponseBankTransferData](../../doc/models/token-response-bank-transfer-data.md) \| nil | Optional | Transaction token data payload. The actual structure depends on `payment_type` — card, konbini, online (QR / 3DS), or bank transfer. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
transaction_token = TransactionToken.new(
  id: '6426bbd2-17bd-41bf-883b-1fe970db48ee',
  store_id: 'fc264608-9a9e-495e-844e-a08129a81af4',
  email: 'test@univapay.com',
  payment_type: TransactionTokenPaymentType::CARD,
  active: true,
  mode: TransactionTokenMode::LIVE,
  type: TransactionTokenType::ONE_TIME,
  usage_limit: 'example',
  confirmed: true,
  metadata: {
    'customer_id' => nil
  },
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  updated_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  last_used_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  data: nil,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

