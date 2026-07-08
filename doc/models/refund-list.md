
# Refund List

Paginated list of refunds.

*This model accepts additional fields of type Object.*

## Structure

`RefundList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[Refund]`](../../doc/models/refund.md) | Optional | List of resources. |
| `has_more` | `TrueClass \| FalseClass` | Optional | Whether more results are available. |
| `total_hits` | `Integer` | Optional | Total number of matching resources. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
refund_list = RefundList.new(
  items: [
    Refund.new(
      id: 'b4d9fea9-c9b3-4e76-a25d-b61f7e4821b6',
      store_id: '76cf4a64-02bc-4cb3-9a28-74622e5928a1',
      charge_id: '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98',
      status: RefundStatus::SUCCESSFUL,
      amount: 1000,
      currency: 'JPY',
      amount_formatted: 1000,
      reason: RefundReasonResponse::CUSTOMER_REQUEST,
      message: 'Customer returned item',
      error: PaymentError.new,
      metadata: GenericMetadata.new,
      mode: ChargeMode::LIVE,
      created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
      updated_on: DateTimeHelper.from_rfc3339('2026-04-09T07:36:00.000000Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    Refund.new(
      id: 'c5e0afb0-dac4-5f87-b36e-c72f8f5932c7',
      store_id: '76cf4a64-02bc-4cb3-9a28-74622e5928a1',
      charge_id: '7fac5f6d-7a1b-51e4-b5f2-1f2ad6f95fa9',
      status: RefundStatus::PENDING,
      amount: 2500,
      currency: 'JPY',
      amount_formatted: 2500,
      reason: RefundReasonResponse::DUPLICATE,
      message: 'Duplicate charge',
      error: PaymentError.new,
      metadata: GenericMetadata.new(
        order_id: 'ORD-1002'
      ),
      mode: ChargeMode::LIVE,
      created_on: DateTimeHelper.from_rfc3339('2026-04-10T10:00:00.000000Z'),
      updated_on: DateTimeHelper.from_rfc3339('2026-04-10T10:00:05.000000Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  ],
  has_more: false,
  total_hits: 2,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

