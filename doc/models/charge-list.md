
# Charge List

Paginated list of charges.

*This model accepts additional fields of type Object.*

## Structure

`ChargeList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[Charge]`](../../doc/models/charge.md) | Optional | List of resources. |
| `has_more` | `TrueClass \| FalseClass` | Optional | Whether more results are available. |
| `total_hits` | `Integer` | Optional | Total number of matching resources. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge_list = ChargeList.new(
  items: [
    Charge.new(
      id: '11ef32c4-9ea8-169c-a6c8-bfc29867a226',
      store_id: '11edf541-c42d-653c-8c3d-dfe0a55f95c0',
      transaction_token_id: '11ef32c4-9e89-0cac-bd63-17b9a26af61b',
      transaction_token_type: ChargeTransactionTokenType::ONE_TIME,
      subscription_id: '00002470-0000-0000-0000-000000000000',
      requested_amount: 1000,
      requested_currency: 'JPY',
      requested_amount_formatted: 1000,
      charged_amount: 1000,
      charged_currency: 'JPY',
      charged_amount_formatted: 1000,
      only_direct_currency: false,
      status: ChargeStatus::SUCCESSFUL,
      error: PaymentError.new,
      metadata: GenericMetadata.new(
        order_id: 'ORD-2001'
      ),
      mode: ChargeMode::TEST,
      created_on: DateTimeHelper.from_rfc3339('2024-06-25T07:29:12.854865Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    Charge.new(
      id: '11ef32c3-3cfe-3bc0-abed-0bb96f792078',
      store_id: '11edf541-c42d-653c-8c3d-dfe0a55f95c0',
      transaction_token_id: '11ef32c3-3cdd-df92-9dce-c346b9fdf088',
      transaction_token_type: ChargeTransactionTokenType::RECURRING,
      subscription_id: '00002470-0000-0000-0000-000000000000',
      requested_amount: 1250,
      requested_currency: 'USD',
      requested_amount_formatted: 12.5,
      charged_amount: 1250,
      charged_currency: 'USD',
      charged_amount_formatted: 12.5,
      only_direct_currency: false,
      status: ChargeStatus::SUCCESSFUL,
      error: PaymentError.new,
      metadata: GenericMetadata.new(
        order_id: 'ORD-2002'
      ),
      mode: ChargeMode::TEST,
      created_on: DateTimeHelper.from_rfc3339('2024-06-25T07:19:19.507637Z'),
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

