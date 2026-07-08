
# Subscription Payment

Represents a single scheduled or historical payment for a subscription.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionPayment`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Unique identifier. |
| `due_date` | `Date` | Optional | Scheduled due date. |
| `zone_id` | `String` | Optional | IANA Timezone ID. |
| `amount` | `Integer` | Optional | Amount in the smallest currency unit. |
| `currency` | `String` | Optional | ISO-4217 currency code. |
| `amount_formatted` | `Float` | Optional | Amount formatted for display. |
| `is_paid` | `TrueClass \| FalseClass` | Optional | Indicates whether this specific payment cycle has been successfully charged. |
| `is_last_payment` | `TrueClass \| FalseClass` | Optional | Indicates if this is the final payment in a limited-cycle subscription. |
| `created_on` | `DateTime` | Optional | Timestamp when the resource was created. |
| `updated_on` | `DateTime` | Optional | Timestamp when the resource was last updated. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_payment = SubscriptionPayment.new(
  id: '11e89a0a-8cee-d660-b984-3fcaaed46e7c',
  due_date: Date.iso8601('2018-08-21'),
  zone_id: 'Asia/Tokyo',
  amount: 10000,
  currency: 'JPY',
  amount_formatted: 10000,
  is_paid: false,
  is_last_payment: false,
  created_on: DateTimeHelper.from_rfc3339('2018-08-07T06:24:33.961256Z'),
  updated_on: DateTimeHelper.from_rfc3339('2018-08-07T06:24:33.961256Z'),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

