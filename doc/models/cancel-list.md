
# Cancel List

Paginated list of cancels.

*This model accepts additional fields of type Object.*

## Structure

`CancelList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[Cancel]`](../../doc/models/cancel.md) | Optional | List of resources. |
| `has_more` | `TrueClass \| FalseClass` | Optional | Whether more results are available. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
cancel_list = CancelList.new(
  items: [
    Cancel.new(
      id: 'a1b2c3d4-e5f6-7890-abcd-ef1234567890',
      charge_id: '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98',
      store_id: '76cf4a64-02bc-4cb3-9a28-74622e5928a1',
      status: CancelStatus::SUCCESSFUL,
      error: PaymentError.new(
        code: 24,
        message: 'message4',
        detail: 'detail0',
        additional_properties: {
          'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
        }
      ),
      metadata: GenericMetadata.new(
        order_id: 'ORD-987'
      ),
      mode: ChargeMode::LIVE,
      created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
      updated_on: DateTimeHelper.from_rfc3339('2026-04-09T07:36:00.000000Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    Cancel.new(
      id: 'b2c3d4e5-f6a7-8901-bcde-f23456789012',
      charge_id: '7fac5f6d-7a1b-51e4-b5f2-1f2ad6f95fa9',
      store_id: '76cf4a64-02bc-4cb3-9a28-74622e5928a1',
      status: CancelStatus::SUCCESSFUL,
      error: PaymentError.new(
        code: 24,
        message: 'message4',
        detail: 'detail0',
        additional_properties: {
          'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
        }
      ),
      metadata: GenericMetadata.new(
        order_id: 'ORD-988'
      ),
      mode: ChargeMode::LIVE,
      created_on: DateTimeHelper.from_rfc3339('2026-04-10T10:00:00.000000Z'),
      updated_on: DateTimeHelper.from_rfc3339('2026-04-10T10:00:12.000000Z'),
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

