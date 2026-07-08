
# Merchant Webhook Card Configuration

Card payment settings.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookCardConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `enabled` | `TrueClass \| FalseClass` | Optional | Enables card payments. |
| `debit_enabled` | `TrueClass \| FalseClass` | Optional | Allows debit cards for payment flows. |
| `prepaid_enabled` | `TrueClass \| FalseClass` | Optional | Allows prepaid cards for payment flows. |
| `debit_authorization_enabled` | `TrueClass \| FalseClass` | Optional | Allows authorization-only flows for debit cards. |
| `prepaid_authorization_enabled` | `TrueClass \| FalseClass` | Optional | Allows authorization-only flows for prepaid cards. |
| `forbidden_card_brands` | `Array[String]` | Optional | Card brands rejected by merchant policy. |
| `allowed_countries_by_ip` | `Array[String]` | Optional | Source IP country codes allowed for card payments. |
| `foreign_cards_allowed` | `TrueClass \| FalseClass` | Optional | Allows cards issued outside the primary operating country. |
| `fail_on_new_email` | `TrueClass \| FalseClass` | Optional | Rejects card charges from previously unseen customer email addresses. |
| `card_limit` | `Integer` | Optional | Maximum number of cards allowed per customer context. |
| `allow_empty_cvv` | `TrueClass \| FalseClass` | Optional | Allows card flows without providing a CVV. |
| `only_direct_currency` | `TrueClass \| FalseClass` | Optional | Limits card processing to direct-settlement currencies only. |
| `three_ds_required` | `TrueClass \| FalseClass` | Optional | Requires 3-D Secure for eligible card flows. |
| `three_ds_address_required` | `TrueClass \| FalseClass` | Optional | Requires billing address data when running 3-D Secure. |
| `three_ds_skip_enabled` | `TrueClass \| FalseClass` | Optional | Allows privileged callers to request 3-D Secure skip mode. |
| `allow_direct_token_creation` | `TrueClass \| FalseClass` | Optional | Allows direct card token creation without hosted capture flows. |
| `three_ds_phone_number_required` | `TrueClass \| FalseClass` | Optional | Requires a phone number when running 3-D Secure. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_card_configuration = MerchantWebhookCardConfiguration.new(
  enabled: true,
  debit_enabled: true,
  prepaid_enabled: false,
  debit_authorization_enabled: false,
  prepaid_authorization_enabled: false,
  foreign_cards_allowed: false,
  three_ds_required: true,
  allow_direct_token_creation: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

