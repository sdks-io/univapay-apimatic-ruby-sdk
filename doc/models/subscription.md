
# Subscription

The Subscription object represents a recurring payment schedule.

*This model accepts additional fields of type Object.*

## Structure

`Subscription`

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
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription = Subscription.new(
  id: '11ef335e-9aa5-c54a-8313-7f9847da313a',
  store_id: '11edf541-c42d-653c-8c3d-dfe0a55f95c0',
  transaction_token_id: '11ef32a7-3a71-8662-803f-1bc27702eeec',
  amount: 1250,
  currency: 'USD',
  amount_formatted: 12.5,
  schedule_settings: SubscriptionScheduleSettings.new,
  only_direct_currency: false,
  first_charge_authorization_only: false,
  status: SubscriptionStatus::CURRENT,
  metadata: GenericMetadata.new(
    order_id: '12345'
  ),
  mode: ChargeMode::LIVE,
  created_on: DateTimeHelper.from_rfc3339('2024-06-26T01:51:28.627023Z'),
  period: SubscriptionPeriod::MONTHLY,
  next_payment: SubscriptionNextPayment.new,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

