
# Customs Declaration Webhook Other Error

Nested customs-processing error entry returned in `others`.

*This model accepts additional fields of type Object.*

## Structure

`CustomsDeclarationWebhookOtherError`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Optional | Backend other-error type. |
| `credentials_id` | `UUID \| String` | Optional | Gateway credentials involved in the error when applicable. |
| `message` | `Array[String]` | Optional | Additional reason values for `not_selected_reasons`. |
| `item_name` | `String` | Optional | Related item name for `related_item`. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
customs_declaration_webhook_other_error = CustomsDeclarationWebhookOtherError.new(
  type: 'related_item',
  credentials_id: '00001b7c-0000-0000-0000-000000000000',
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
```

