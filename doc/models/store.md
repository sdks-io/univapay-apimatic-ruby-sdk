
# Store

Store resource returned by the backend `FullStore` formatter. It combines core store identity with the resolved configuration snapshot used for runtime policy evaluation.

*This model accepts additional fields of type Object.*

## Structure

`Store`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Store identifier. |
| `name` | `String` | Optional | Store display name. |
| `created_on` | `DateTime` | Optional | Timestamp when the store was created. |
| `configuration` | [`MerchantWebhookConfiguration`](../../doc/models/merchant-webhook-configuration.md) | Optional | Store-scoped configuration snapshot serialized by gyron-payments-api. It uses the same flattened serializer as merchant configuration, but omits `transfer_schedule`. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
store = Store.new(
  id: '11ef0000-0000-4000-8000-000000000022',
  name: 'Tokyo Store',
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
  configuration: MerchantWebhookConfiguration.new(
    percent_fee: 3.6,
    flat_fees: [
      nil
    ],
    logo_url: 'logo_url4',
    country: 'JP',
    language: 'ja',
    minimum_charge_amounts: [
      MerchantWebhookMoneyAmount.new(
        amount: 100,
        currency: 'JPY'
      )
    ],
    maximum_charge_amounts: [
      MerchantWebhookMoneyAmount.new(
        amount: 100000,
        currency: 'JPY'
      )
    ],
    user_transactions_configuration: MerchantWebhookUserTransactionsConfiguration.new(
      enabled: true,
      notify_customer: true,
      notify_on_webhook_failure: true
    ),
    card_configuration: MerchantWebhookCardConfiguration.new(
      enabled: true,
      debit_enabled: true,
      prepaid_enabled: false,
      three_ds_required: true
    ),
    online_configuration: MerchantWebhookOnlineConfiguration.new(
      enabled: true
    ),
    bank_transfer_configuration: MerchantWebhookBankTransferConfiguration.new(
      enabled: true,
      match_amount: true,
      expiration: 'P7D'
    ),
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

