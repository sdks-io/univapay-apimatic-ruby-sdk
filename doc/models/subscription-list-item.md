
# Subscription List Item

Subscription entry returned in list responses.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionListItem`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Unique identifier. |
| `store_id` | `UUID \| String` | Optional | Store identifier. |
| `transaction_token_id` | `UUID \| String` | Optional | Transaction token identifier. |
| `amount` | `Integer` | Optional | Amount in the smallest currency unit. |
| `currency` | `String` | Optional | ISO-4217 currency code. |
| `amount_formatted` | `Float` | Optional | Amount formatted for display. |
| `initial_amount` | `Integer` | Optional | Initial amount in the smallest currency unit. |
| `initial_amount_formatted` | `Float` | Optional | Initial amount formatted for display. |
| `subsequent_cycles_start` | `DateTime` | Optional | Timestamp when recurring cycles begin. |
| `schedule_settings` | [`SubscriptionScheduleSettings`](../../doc/models/subscription-schedule-settings.md) | Optional | Schedule settings applied to a subscription. |
| `only_direct_currency` | `TrueClass \| FalseClass` | Optional | Whether only direct currency processing is allowed. |
| `first_charge_capture_after` | `String` | Optional | ISO-8601 Duration (e.g., P3D). |
| `first_charge_authorization_only` | `TrueClass \| FalseClass` | Optional | Whether the first charge is authorization-only. |
| `status` | [`SubscriptionStatus`](../../doc/models/subscription-status.md) | Optional | Subscription Status schema. |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `mode` | [`ChargeMode`](../../doc/models/charge-mode.md) | Optional | Charge Mode schema. |
| `created_on` | `DateTime` | Optional | Timestamp when the resource was created. |
| `period` | [`SubscriptionPeriod`](../../doc/models/subscription-period.md) | Optional | Subscription Period schema. |
| `next_payment` | [`SubscriptionNextPayment`](../../doc/models/subscription-next-payment.md) | Optional | Next scheduled payment details for a subscription. |
| `merchant_name` | `String` | Optional | Merchant display name. |
| `store_name` | `String` | Optional | Store display name. |
| `payment_type` | `String` | Optional | Payment method type. |
| `next_payment_date` | `Date` | Optional | Next payment date value. |
| `user_data` | [`SubscriptionUserData`](../../doc/models/subscription-user-data.md) | Optional | Customer-facing payment method summary data. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_list_item = SubscriptionListItem.new(
  id: '11ef335e-9aa5-c54a-8313-7f9847da313a',
  store_id: '11edf541-c42d-653c-8c3d-dfe0a55f95c0',
  transaction_token_id: '11ef32a7-3a71-8662-803f-1bc27702eeec',
  amount: 1250,
  currency: 'USD',
  amount_formatted: 12.5,
  status: SubscriptionStatus::CURRENT,
  merchant_name: '管理画面ガイド',
  store_name: '管理画面ガイド_TEST店舗',
  payment_type: 'card',
  next_payment_date: Date.iso8601('2024-07-26'),
  user_data: SubscriptionUserData.new(
    type: 'charge',
    cardholder_name: 'taro yamada',
    email: 'test@test.com',
    brand: 'visa'
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

