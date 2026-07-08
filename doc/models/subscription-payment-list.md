
# Subscription Payment List

Paginated list of subscription payments.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionPaymentList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[SubscriptionPayment]`](../../doc/models/subscription-payment.md) | Optional | List of resources. |
| `has_more` | `TrueClass \| FalseClass` | Optional | Whether more results are available. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_payment_list = SubscriptionPaymentList.new(
  items: [
    SubscriptionPayment.new(
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
    ),
    SubscriptionPayment.new(
      id: '11e89a0a-8cc5-2662-9460-2b14b1a601ba',
      due_date: Date.iso8601('2018-08-07'),
      zone_id: 'Asia/Tokyo',
      amount: 1000,
      currency: 'JPY',
      amount_formatted: 1000,
      is_paid: true,
      is_last_payment: false,
      created_on: DateTimeHelper.from_rfc3339('2018-08-07T06:24:33.646223Z'),
      updated_on: DateTimeHelper.from_rfc3339('2018-08-07T06:24:33.887760Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  ],
  has_more: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

