
# Subscription Update Request

Request payload for updating a subscription.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionUpdateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_token_id` | `UUID \| String` | Optional | Transaction token ID used for the subscription.  Can be changed to update the payment method (e.g., when a card expires).  Allowed only when the status is `unconfirmed`, `unpaid`, `current`, or `suspended`. |
| `amount` | `Integer` | Optional | The recurring charge amount (applied to the cycle after the next one).  Not available for limited-cycle subscriptions.  To change the immediate next payment amount, update `next_payment.amount` instead. |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `status` | [`SubscriptionUpdateStatus`](../../doc/models/subscription-update-status.md) | Optional | Update the subscription status.  `suspended`: Pause the subscription.  `unpaid`: Resume a suspended subscription. |
| `schedule_settings` | [`SubscriptionUpdateScheduleSettings`](../../doc/models/subscription-update-schedule-settings.md) | Optional | Schedule settings that can be updated on a subscription. |
| `next_payment` | [`SubscriptionUpdateNextPayment`](../../doc/models/subscription-update-next-payment.md) | Optional | Fields that can be updated on the next scheduled payment. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_update_request = SubscriptionUpdateRequest.new(
  transaction_token_id: '11ef3362-3700-c54a-9baa-6f7e6527c9d9',
  amount: 34,
  metadata: GenericMetadata.new(
    order_id: '12345',
    univapay_name: 'univapay-name8',
    univapay_phone_number: 'univapay-phone-number2',
    additional_properties: {
      'exampleAdditionalProperty' => 'String4'
    }
  ),
  status: SubscriptionUpdateStatus::SUSPENDED,
  schedule_settings: SubscriptionUpdateScheduleSettings.new(
    termination_mode: SubscriptionTerminationMode::ON_NEXT_PAYMENT,
    start_on: DateTimeHelper.from_rfc3339('2016-03-13T12:52:32.123Z'),
    retry_interval: 'retry_interval2',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  next_payment: SubscriptionUpdateNextPayment.new(
    due_date: Date.iso8601('2030-01-01')
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

