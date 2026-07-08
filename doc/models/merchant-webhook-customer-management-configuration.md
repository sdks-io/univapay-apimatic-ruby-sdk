
# Merchant Webhook Customer Management Configuration

Customer-management defaults.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookCustomerManagementConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables customer-management features. |
| `default_roles` | `Array[String]` | Optional | Roles applied to newly created customers. |
| `default_mode` | `String` | Optional | Default processing mode assigned to new customer records. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_customer_management_configuration = MerchantWebhookCustomerManagementConfiguration.new(
  enabled: true,
  default_roles: [
    'end_user'
  ],
  default_mode: 'live',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

