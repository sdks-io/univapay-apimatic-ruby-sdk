
# Webhook

Represents a webhook subscription. Webhooks send event notifications to a specified URL when triggered by payment events.

*This model accepts additional fields of type Object.*

## Structure

`Webhook`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Optional | Unique identifier for the webhook. |
| `store_id` | `UUID \| String` | Optional | ID of the store this webhook belongs to (null for merchant-level webhooks). |
| `merchant_id` | `UUID \| String` | Optional | ID of the merchant this webhook belongs to. |
| `triggers` | [`Array[WebhookTrigger]`](../../doc/models/webhook-trigger.md) | Optional | List of event types that trigger this webhook. |
| `url` | `String` | Optional | The endpoint URL that receives webhook POST requests. |
| `auth_token` | `String` | Optional | Optional bearer token included in the `Authorization` header of webhook requests. Used to authenticate the webhook receiver. |
| `active` | `TrueClass \| FalseClass` | Optional | Whether this webhook is currently active and receiving events. |
| `is_integration` | `TrueClass \| FalseClass` | Optional | Admin-only flag. Indicates this webhook is used for platform integration purposes. Not settable by merchants. |
| `created_on` | `DateTime` | Optional | Timestamp when the webhook was created. |
| `updated_on` | `DateTime` | Optional | Timestamp when the webhook was last updated. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
webhook = Webhook.new(
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
  created_on: DateTimeHelper.from_rfc3339('2026-04-01T00:00:00Z'),
  updated_on: DateTimeHelper.from_rfc3339('2026-04-02T00:00:00Z'),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

