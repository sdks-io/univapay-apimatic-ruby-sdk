
# Webhook Event List

Paginated list of webhook events.

*This model accepts additional fields of type Object.*

## Structure

`WebhookEventList`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `items` | [`Array[WebhookEvent]`](../../doc/models/webhook-event.md) | Optional | List of resources. |
| `has_more` | `TrueClass \| FalseClass` | Optional | Whether more results are available. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
webhook_event_list = WebhookEventList.new(
  items: [
    WebhookEvent.new(
      id: 'e1f2a3b4-c5d6-7890-efab-123456789cde',
      webhook_id: 'd3e4f5a6-b7c8-9012-def0-123456789abc',
      event: WebhookTrigger::CHARGE_FINISHED,
      data: { 'key1' => 'val1', 'key2' => 'val2' },
      successful: true,
      fired_on: DateTimeHelper.from_rfc3339('2026-04-09T07:36:00.000000Z'),
      error_message: nil,
      created_on: DateTimeHelper.from_rfc3339('2026-04-09T07:35:50.000000Z'),
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    ),
    WebhookEvent.new(
      id: 'f2a3b4c5-d6e7-8901-fabc-23456789cdef',
      webhook_id: 'd3e4f5a6-b7c8-9012-def0-123456789abc',
      event: WebhookTrigger::REFUND_FINISHED,
      data: { 'key1' => 'val1', 'key2' => 'val2' },
      successful: true,
      fired_on: DateTimeHelper.from_rfc3339('2026-04-10T11:00:05.000000Z'),
      error_message: nil,
      created_on: DateTimeHelper.from_rfc3339('2026-04-10T11:00:00.000000Z'),
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

