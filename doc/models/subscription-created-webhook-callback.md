
# Subscription Created Webhook Callback

Webhook envelope for the subscription_created event.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionCreatedWebhookCallback`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Required | Unique ID of this webhook delivery. |
| `event` | `String` | Required, Constant | Event type discriminator — always `subscription_created` for this callback.<br><br>**Value**: `'subscription_created'` |
| `data` | [`Subscription`](../../doc/models/subscription.md) | Optional | The Subscription object represents a recurring payment schedule. |
| `created_on` | `DateTime` | Required | Timestamp when the event was fired. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_created_webhook_callback = SubscriptionCreatedWebhookCallback.new(
  id: '11ef0000-0000-4000-8000-000000000001',
  event: 'subscription_created',
  created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
  data: Subscription.new(
    id: '11ef335e-9aa5-c54a-8313-7f9847da313a',
    store_id: '11edf541-c42d-653c-8c3d-dfe0a55f95c0',
    transaction_token_id: '11ef32a7-3a71-8662-803f-1bc27702eeec',
    amount: 1250,
    currency: 'USD',
    amount_formatted: 12.5,
    schedule_settings: SubscriptionScheduleSettings.new(
      start_on: Date.iso8601('2024-07-01'),
      zone_id: 'Asia/Tokyo',
      preserve_end_of_month: false,
      retry_interval: 'P7D',
      termination_mode: SubscriptionTerminationMode::ON_NEXT_PAYMENT
    ),
    only_direct_currency: false,
    first_charge_authorization_only: false,
    status: SubscriptionStatus::CURRENT,
    metadata: GenericMetadata.new(
      order_id: '12345'
    ),
    mode: ChargeMode::TEST,
    created_on: DateTimeHelper.from_rfc3339('2024-06-26T01:51:28.627023Z'),
    period: SubscriptionPeriod::MONTHLY,
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

