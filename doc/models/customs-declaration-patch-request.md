
# Customs Declaration Patch Request

Request body for updating a customs declaration. Backend patch handling keeps the original `customs`, `certificate_id`, and `certificate_name` values and only accepts a new `merchant_customs_no`.

*This model accepts additional fields of type Object.*

## Structure

`CustomsDeclarationPatchRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `merchant_customs_no` | `String` | Required | Updated merchant customs registration number. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
customs_declaration_patch_request = CustomsDeclarationPatchRequest.new(
  merchant_customs_no: '1234567891',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

