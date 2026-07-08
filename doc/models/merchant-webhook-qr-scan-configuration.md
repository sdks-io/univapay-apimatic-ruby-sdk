
# Merchant Webhook Qr Scan Configuration

QR scan payment settings.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookQrScanConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables QR scan payments. |
| `forbidden_qr_scan_gateways` | `Array[String]` | Optional | QR scan gateways disabled for the merchant. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_qr_scan_configuration = MerchantWebhookQrScanConfiguration.new(
  enabled: true,
  forbidden_qr_scan_gateways: [
    'wechat'
  ],
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

