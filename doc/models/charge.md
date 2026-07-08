
# Charge

Charge resource returned by the payments API.

*This model accepts additional fields of type Object.*

## Structure

`Charge`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Unique identifier. |
| `store_id` | `UUID \| String` | Optional | Store identifier. |
| `transaction_token_id` | `UUID \| String` | Optional | Transaction token identifier. |
| `transaction_token_type` | [`ChargeTransactionTokenType`](../../doc/models/charge-transaction-token-type.md) | Optional | Charge Transaction Token Type schema. |
| `subscription_id` | `UUID \| String` | Optional | Subscription identifier. |
| `merchant_transaction_id` | `String` | Optional | Merchant-defined transaction identifier. |
| `requested_amount` | `Integer` | Optional | Requested amount in the smallest currency unit. |
| `requested_currency` | `String` | Optional | Requested ISO-4217 currency code. |
| `requested_amount_formatted` | `Float` | Optional | Requested amount formatted for display. |
| `charged_amount` | `Integer` | Optional | Charged amount in the smallest currency unit. |
| `charged_currency` | `String` | Optional | Charged ISO-4217 currency code. |
| `charged_amount_formatted` | `Float` | Optional | Charged amount formatted for display. |
| `fee_amount` | `Integer` | Optional | Fee amount in the smallest currency unit. |
| `fee_currency` | `String` | Optional | Fee ISO-4217 currency code. |
| `fee_amount_formatted` | `Float` | Optional | Fee amount formatted for display. |
| `only_direct_currency` | `TrueClass \| FalseClass` | Optional | Whether only direct currency processing is allowed. |
| `capture_at` | `DateTime` | Optional | Timestamp when capture should occur. |
| `descriptor` | `String` | Optional | Billing descriptor. |
| `descriptor_phone_number` | `String` | Optional | Billing descriptor phone number. |
| `status` | [`ChargeStatus`](../../doc/models/charge-status.md) | Optional | Charge Status schema. |
| `error` | [`PaymentError`](../../doc/models/payment-error.md) | Optional | Payment error details, or null if successful. |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `mode` | [`ChargeMode`](../../doc/models/charge-mode.md) | Optional | Charge Mode schema. |
| `created_on` | `DateTime` | Optional | Timestamp when the resource was created. |
| `merchant_name` | `String` | Optional | Merchant display name. |
| `store_name` | `String` | Optional | Store display name. |
| `redirect` | [`ChargeRedirect`](../../doc/models/charge-redirect.md) | Optional | Charge Redirect schema. |
| `three_ds` | [`ChargeThreeDs`](../../doc/models/charge-three-ds.md) | Optional | Charge Three Ds schema. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge = Charge.new(
  id: '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98',
  store_id: '76cf4a64-02bc-4cb3-9a28-74622e5928a1',
  transaction_token_id: 'af834c88-7a8f-47ac-aee9-0386a0f98b0d',
  transaction_token_type: ChargeTransactionTokenType::ONE_TIME,
  subscription_id: '11ef0000-0000-4000-8000-000000000001',
  merchant_transaction_id: 'ORD-998877',
  requested_amount: 1000,
  requested_currency: 'JPY',
  requested_amount_formatted: 1000,
  charged_amount: 1000,
  charged_currency: 'JPY',
  charged_amount_formatted: 1000,
  fee_amount: 30,
  fee_currency: 'JPY',
  fee_amount_formatted: 30,
  only_direct_currency: false,
  capture_at: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  descriptor: 'UNIVAPAY TEST',
  descriptor_phone_number: '0312345678',
  status: ChargeStatus::PENDING,
  error: PaymentError.new(
    code: 301,
    message: 'Card number error.',
    detail: 'The provided card number failed validation.'
  ),
  metadata: GenericMetadata.new(
    order_id: '12345'
  ),
  mode: ChargeMode::LIVE,
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50Z'),
  merchant_name: 'Test Merchant',
  store_name: 'Tokyo Store',
  redirect: ChargeRedirect.new,
  three_ds: ChargeThreeDs.new,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

