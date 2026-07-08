
# Webhook Create Request

Request body to create a new store-level webhook subscription.

*This model accepts additional fields of type Object.*

## Structure

`WebhookCreateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `triggers` | [`Array[WebhookTrigger]`](../../doc/models/webhook-trigger.md) | Required | List of event types that trigger this webhook. Must be non-empty and contain only events valid for the store level. |
| `url` | `String` | Required | The URL to POST webhook payloads to. |
| `auth_token` | `String` | Optional | Optional bearer token sent in the `Authorization` header of webhook requests. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
webhook_create_request = WebhookCreateRequest.new(
  triggers: [
    WebhookTrigger::CHARGE_FINISHED
  ],
  url: 'https://example.com/webhooks/payments',
  auth_token: 'my-secret-token',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

