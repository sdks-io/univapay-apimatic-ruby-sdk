
# Webhook List

Paginated list of webhooks.

*This model accepts additional fields of type Object.*

## Structure

`WebhookList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[Webhook]`](../../doc/models/webhook.md) | Optional | List of resources. |
| `has_more` | `TrueClass \| FalseClass` | Optional | Whether more results are available. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
webhook_list = WebhookList.new(
  items: [
    Webhook.new(
      id: 'd3e4f5a6-b7c8-9012-def0-123456789abc',
      store_id: '76cf4a64-02bc-4cb3-9a28-74622e5928a1',
      merchant_id: '01234567-89ab-cdef-0123-456789abcdef',
      triggers: [
        WebhookTrigger::CHARGE_FINISHED,
        WebhookTrigger::REFUND_FINISHED
      ],
      url: 'https://example.com/webhooks/payments',
      auth_token: 'my-secret-token',
      active: true,
      is_integration: false,
      created_on: DateTimeHelper.from_rfc3339('2026-04-01T00:00:00.000000Z'),
      updated_on: DateTimeHelper.from_rfc3339('2026-04-02T00:00:00.000000Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    Webhook.new(
      id: 'e4f5a6b7-c8d9-0123-ef01-23456789abcd',
      store_id: '76cf4a64-02bc-4cb3-9a28-74622e5928a1',
      merchant_id: '01234567-89ab-cdef-0123-456789abcdef',
      triggers: [
        WebhookTrigger::SUBSCRIPTION_PAYMENT,
        WebhookTrigger::SUBSCRIPTION_FAILURE
      ],
      url: 'https://example.com/webhooks/subscriptions',
      auth_token: nil,
      active: true,
      is_integration: false,
      created_on: DateTimeHelper.from_rfc3339('2026-04-03T08:30:00.000000Z'),
      updated_on: DateTimeHelper.from_rfc3339('2026-04-03T08:30:00.000000Z'),
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

