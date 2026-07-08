
# Subscription Update Next Payment

Fields that can be updated on the next scheduled payment.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionUpdateNextPayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `due_date` | `Date` | Optional | Next payment date (YYYY-MM-DD).  Note: Only available for merchants permitted to edit next payment dates. |
| `amount` | `Integer` | Optional | Next payment amount. Not available for limited-cycle subscriptions.  Only available for permitted merchants.  This does not change subsequent cycle amounts. |
| `terminate_with_status` | [`SubscriptionTerminateWithStatus`](../../doc/models/subscription-terminate-with-status.md) | Optional | Schedule a status transition on a payment's due date. Set to `suspended` or `canceled` to schedule termination. Send `null` to cancel a previously scheduled transition. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_update_next_payment = SubscriptionUpdateNextPayment.new(
  due_date: Date.iso8601('2016-03-13'),
  amount: 32,
  terminate_with_status: SubscriptionTerminateWithStatus::SUSPENDED,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

