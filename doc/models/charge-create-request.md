
# Charge Create Request

Request payload for creating a charge.

*This model accepts additional fields of type Object.*

## Structure

`ChargeCreateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_token_id` | `UUID \| String` | Required | Transaction token identifier. |
| `amount` | `Integer` | Required | The charge amount. |
| `currency` | `String` | Required | ISO-4217 currency code.<br><br>**Default**: `'JPY'` |
| `capture` | `TrueClass \| FalseClass` | Optional | If false, creates an Authorization only (Hold).<br><br>**Default**: `true` |
| `capture_at` | `DateTime` | Optional | Auto-capture date for cards, or payment deadline for Konbini/Bank. Note: Time specification is ignored for 7-Eleven, Seicomart, and PayEasy. |
| `merchant_transaction_id` | `String` | Optional | Unique transaction ID for the merchant.  Required/used by specific brands like we_chat, we_chat_mpm, and we_chat_online.<br><br>**Constraints**: *Maximum Length*: `32` |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `client_metadata` | [`ChargeCreateRequestClientMetadata`](../../doc/models/charge-create-request-client-metadata.md) | Optional | Charge Create Request Client Metadata schema. |
| `redirect` | [`ChargeCreateRequestRedirect`](../../doc/models/charge-create-request-redirect.md) | Optional | Charge Create Request Redirect schema. |
| `three_ds` | [`ChargeCreateRequestThreeDs`](../../doc/models/charge-create-request-three-ds.md) | Optional | Charge Create Request Three Ds schema. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge_create_request = ChargeCreateRequest.new(
  transaction_token_id: 'af834c88-7a8f-47ac-aee9-0386a0f98b0d',
  amount: 1000,
  currency: 'JPY',
  capture: false,
  capture_at: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
  merchant_transaction_id: 'merchant_transaction_id8',
  metadata: GenericMetadata.new,
  client_metadata: ChargeCreateRequestClientMetadata.new,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

