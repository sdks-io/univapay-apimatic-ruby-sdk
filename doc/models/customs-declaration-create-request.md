
# Customs Declaration Create Request

Request body for creating a customs declaration. Backend currently accepts this shape only for WeChat Online and WeChat MPM charges.

*This model accepts additional fields of type Object.*

## Structure

`CustomsDeclarationCreateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `customs` | `String` | Required | WeChat customs authority code used for the declaration. |
| `merchant_customs_no` | `String` | Required | Merchant customs registration number. |
| `certificate_id` | `String` | Required | Customer certificate or passport identifier used by customs. |
| `certificate_name` | `String` | Required | Customer name exactly as shown on the certificate. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
customs_declaration_create_request = CustomsDeclarationCreateRequest.new(
  customs: 'TOKYO',
  merchant_customs_no: '1234567890',
  certificate_id: 'AB1234567',
  certificate_name: 'TARO YAMADA',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

