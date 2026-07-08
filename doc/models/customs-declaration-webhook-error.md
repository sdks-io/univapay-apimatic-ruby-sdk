
# Customs Declaration Webhook Error

Error payload returned when customs declaration processing fails.

*This model accepts additional fields of type Object.*

## Structure

`CustomsDeclarationWebhookError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `code` | `Integer` | Optional | Backend customs declaration error code. |
| `message` | `String` | Optional | Human-readable backend error name. |
| `details` | `String` | Optional | Optional backend-provided detail string. |
| `others` | [`Array[CustomsDeclarationWebhookOtherError]`](../../doc/models/customs-declaration-webhook-other-error.md) | Optional | Additional nested error records returned by the backend. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
customs_declaration_webhook_error = CustomsDeclarationWebhookError.new(
  code: 601,
  message: 'There was a processing error',
  details: 'Missing customs registration',
  others: [
    CustomsDeclarationWebhookOtherError.new(
      type: 'related_item',
      credentials_id: '000013b6-0000-0000-0000-000000000000',
      message: [
        'message4',
        'message5',
        'message6'
      ],
      item_name: 'charge',
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  ],
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

