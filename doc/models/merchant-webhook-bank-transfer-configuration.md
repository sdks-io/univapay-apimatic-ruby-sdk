
# Merchant Webhook Bank Transfer Configuration

Bank transfer payment settings.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookBankTransferConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables bank transfer payments. |
| `match_amount` | `TrueClass \| FalseClass` | Optional | Requires the received deposit amount to exactly match the charge amount. |
| `expiration` | `String` | Optional | ISO-8601 duration before the charge expires. |
| `virtual_bank_accounts_threshold` | `Integer` | Optional | Threshold for provisioning additional virtual bank accounts. |
| `virtual_bank_accounts_fetch_count` | `Integer` | Optional | Number of virtual bank accounts fetched per replenishment batch. |
| `default_extension_period` | `String` | Optional | Default ISO-8601 extension period applied to eligible charges. |
| `maximum_extension_period` | `String` | Optional | Maximum ISO-8601 extension period allowed for a charge. |
| `automatic_extension_enabled` | `TrueClass \| FalseClass` | Optional | Automatically extends eligible bank transfer charges. |
| `charge_request_notification_enabled` | `TrueClass \| FalseClass` | Optional | Sends notifications when a bank transfer charge is created. |
| `charge_request_canceled_notification_enabled` | `TrueClass \| FalseClass` | Optional | Sends notifications when a bank transfer charge is canceled. |
| `charge_expired_notification_enabled` | `TrueClass \| FalseClass` | Optional | Sends notifications when a bank transfer charge expires. |
| `deposit_received_notification_enabled` | `TrueClass \| FalseClass` | Optional | Sends notifications when a deposit is received. |
| `deposit_insufficient_notification_enabled` | `TrueClass \| FalseClass` | Optional | Sends notifications when a deposit is below the expected amount. |
| `deposit_exceeded_notification_enabled` | `TrueClass \| FalseClass` | Optional | Sends notifications when a deposit exceeds the expected amount. |
| `extension_notification_enabled` | `TrueClass \| FalseClass` | Optional | Sends notifications when a bank transfer charge is extended. |
| `remind_notification_period` | `String` | Optional | ISO-8601 lead time for payment reminder notifications. |
| `remind_notification_enabled` | `TrueClass \| FalseClass` | Optional | Sends reminder notifications before bank transfer expiry. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_bank_transfer_configuration = MerchantWebhookBankTransferConfiguration.new(
  enabled: true,
  match_amount: true,
  expiration: 'P7D',
  virtual_bank_accounts_threshold: 50,
  virtual_bank_accounts_fetch_count: 25,
  default_extension_period: 'P3D',
  maximum_extension_period: 'P30D',
  automatic_extension_enabled: true,
  charge_request_notification_enabled: true,
  deposit_received_notification_enabled: true,
  remind_notification_period: 'P2D',
  remind_notification_enabled: true,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

