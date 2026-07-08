
# Customs Declaration Webhook Declaration

WeChat customs declaration payload returned by the backend formatter.

*This model accepts additional fields of type Object.*

## Structure

`CustomsDeclarationWebhookDeclaration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customs` | `String` | Optional | WeChat customs authority code. |
| `merchant_customs_no` | `String` | Optional | Merchant customs registration number. |
| `certificate_id` | `String` | Optional | Customer certificate or passport identifier. |
| `certificate_name` | `String` | Optional | Customer name as provided to customs. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
customs_declaration_webhook_declaration = CustomsDeclarationWebhookDeclaration.new(
  customs: 'TOKYO',
  merchant_customs_no: '1234567890',
  certificate_id: 'AB1234567',
  certificate_name: 'TARO YAMADA',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

