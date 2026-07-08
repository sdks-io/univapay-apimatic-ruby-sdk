
# Charge Create Request Client Metadata

Charge Create Request Client Metadata schema.

*This model accepts additional fields of type Object.*

## Structure

`ChargeCreateRequestClientMetadata`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `ip_address` | `String` | Optional | Consumer's IPv4 address. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge_create_request_client_metadata = ChargeCreateRequestClientMetadata.new(
  ip_address: '198.51.100.14',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

