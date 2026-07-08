
# Merchant Webhook Configuration

Merchant configuration object serialized by gyron-payments-api.

*This model accepts additional fields of type Object.*

## Structure

`MerchantWebhookConfiguration`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `percent_fee` | `Float` | Optional | Default percent fee applied when no card-brand override exists. |
| `flat_fees` | [`Array[MerchantWebhookMoneyAmount]`](../../doc/models/merchant-webhook-money-amount.md) | Optional | Flat fee overrides by currency. |
| `logo_url` | `String` | Optional | Merchant logo URL. |
| `country` | `String` | Optional | Merchant country code. |
| `language` | `String` | Optional | Merchant default language. |
| `display_time_zone` | `String` | Optional | Merchant display time zone. |
| `min_transfer_payout` | [`MerchantWebhookMoneyAmount`](../../doc/models/merchant-webhook-money-amount.md) | Optional | Monetary amount object serialized by backend config models. |
| `minimum_charge_amounts` | [`Array[MerchantWebhookMoneyAmount]`](../../doc/models/merchant-webhook-money-amount.md) | Optional | Minimum allowed charge amounts by currency. |
| `maximum_charge_amounts` | [`Array[MerchantWebhookMoneyAmount]`](../../doc/models/merchant-webhook-money-amount.md) | Optional | Maximum allowed charge amounts by currency. |
| `transfer_schedule` | [`MerchantWebhookTransferScheduleConfiguration`](../../doc/models/merchant-webhook-transfer-schedule-configuration.md) | Optional | Transfer schedule configuration inherited by the merchant. |
| `user_transactions_configuration` | [`MerchantWebhookUserTransactionsConfiguration`](../../doc/models/merchant-webhook-user-transactions-configuration.md) | Optional | Merchant transaction notification settings. |
| `recurring_token_configuration` | [`MerchantWebhookRecurringTokenConfiguration`](../../doc/models/merchant-webhook-recurring-token-configuration.md) | Optional | Recurring token configuration inherited by the merchant. |
| `security_configuration` | [`MerchantWebhookSecurityConfiguration`](../../doc/models/merchant-webhook-security-configuration.md) | Optional | Merchant-level fraud and refund safety settings. |
| `checkout_configuration` | [`MerchantWebhookCheckoutConfiguration`](../../doc/models/merchant-webhook-checkout-configuration.md) | Optional | Checkout field collection settings. |
| `installments_configuration` | [`MerchantWebhookInstallmentPlanConfiguration`](../../doc/models/merchant-webhook-installment-plan-configuration.md) | Optional | Installment plan configuration. |
| `subscription_plan_configuration` | [`MerchantWebhookSubscriptionPlanConfiguration`](../../doc/models/merchant-webhook-subscription-plan-configuration.md) | Optional | Subscription plan configuration. |
| `card_brand_percent_fees` | [`MerchantWebhookCardBrandPercentFees`](../../doc/models/merchant-webhook-card-brand-percent-fees.md) | Optional | Per-card-brand percent fee overrides. |
| `subscription_configuration` | [`MerchantWebhookSubscriptionConfiguration`](../../doc/models/merchant-webhook-subscription-configuration.md) | Optional | Subscription feature configuration. |
| `customer_management_configuration` | [`MerchantWebhookCustomerManagementConfiguration`](../../doc/models/merchant-webhook-customer-management-configuration.md) | Optional | Customer-management defaults. |
| `descriptor_provided_configuration` | `TrueClass \| FalseClass` | Optional | Whether statement descriptors can be provided by merchants. |
| `card_configuration` | [`MerchantWebhookCardConfiguration`](../../doc/models/merchant-webhook-card-configuration.md) | Optional | Card payment settings. |
| `qr_scan_configuration` | [`MerchantWebhookQrScanConfiguration`](../../doc/models/merchant-webhook-qr-scan-configuration.md) | Optional | QR scan payment settings. |
| `convenience_configuration` | [`MerchantWebhookConvenienceConfiguration`](../../doc/models/merchant-webhook-convenience-configuration.md) | Optional | Convenience-store payment settings. |
| `paidy_configuration` | [`MerchantWebhookPaidyConfiguration`](../../doc/models/merchant-webhook-paidy-configuration.md) | Optional | Paidy payment settings. |
| `qr_merchant_configuration` | [`MerchantWebhookQrMerchantConfiguration`](../../doc/models/merchant-webhook-qr-merchant-configuration.md) | Optional | QR merchant payment settings. |
| `online_configuration` | [`MerchantWebhookOnlineConfiguration`](../../doc/models/merchant-webhook-online-configuration.md) | Optional | Online payment settings. |
| `bank_transfer_configuration` | [`MerchantWebhookBankTransferConfiguration`](../../doc/models/merchant-webhook-bank-transfer-configuration.md) | Optional | Bank transfer payment settings. |
| `platform_credentials_enabled` | `TrueClass \| FalseClass` | Optional | Whether platform credentials are enabled. |
| `tagged_platform_credentials_enabled` | `TrueClass \| FalseClass` | Optional | Whether tagged platform credentials are enabled. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
merchant_webhook_configuration = MerchantWebhookConfiguration.new(
  percent_fee: 3.6,
  flat_fees: [
    MerchantWebhookMoneyAmount.new(
      amount: 100,
      currency: 'JPY',
      additional_properties: {
        'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
      }
    )
  ],
  logo_url: 'logo_url6',
  country: 'JP',
  language: 'ja',
  display_time_zone: 'Asia/Tokyo',
  min_transfer_payout: MerchantWebhookMoneyAmount.new(
    amount: 5000,
    currency: 'JPY'
  ),
  minimum_charge_amounts: [
    MerchantWebhookMoneyAmount.new(
      amount: 100,
      currency: 'JPY'
    )
  ],
  maximum_charge_amounts: [
    MerchantWebhookMoneyAmount.new(
      amount: 100000,
      currency: 'JPY'
    )
  ],
  transfer_schedule: MerchantWebhookTransferScheduleConfiguration.new(
    wait_period: 'P7D',
    period: 'weekly',
    full_period_required: false,
    weekly_closing_day: 'sunday',
    weekly_payout_day: 'friday'
  ),
  user_transactions_configuration: MerchantWebhookUserTransactionsConfiguration.new(
    enabled: true,
    notify_customer: true,
    notify_on_webhook_failure: true,
    notify_on_webhook_disabled: true,
    notify_on_subscriptions: true
  ),
  recurring_token_configuration: MerchantWebhookRecurringTokenConfiguration.new(
    recurring_type: 'infinite',
    charge_wait_period: 'P7D',
    card_charge_cvv_confirmation: MerchantWebhookRecurringCvvConfirmationConfig.new(
      enabled: false
    )
  ),
  security_configuration: MerchantWebhookSecurityConfiguration.new(
    card_charge_cooldown: 'PT5M',
    subscription_cooldown: 'PT10M',
    restrict_ip_after_failed_charge: RestrictIpAfterFailedChargeConfig.new(
      enabled: true,
      count: 5,
      cooldown: 'PT1H'
    ),
    refund_percent_limit: 100,
    confirmation_required: false,
    min_refund_threshold: 100,
    limit_refund_by_sales: MerchantWebhookLimitRefundBySalesConfiguration.new(
      enabled: true,
      period: 'monthly',
      rolling_window: true
    )
  ),
  checkout_configuration: MerchantWebhookCheckoutConfiguration.new(
    ec_email: MerchantWebhookCheckoutToggle.new(
      enabled: true
    ),
    ec_products: MerchantWebhookCheckoutToggle.new(
      enabled: true
    )
  ),
  installments_configuration: MerchantWebhookInstallmentPlanConfiguration.new(
    enabled: true,
    card_processor: CardProcessorInstallmentConfig.new(
      revolving: true,
      fixed_cycle: true
    ),
    supported_payment_types: [
      'card'
    ],
    min_charge_amount: MerchantWebhookMoneyAmount.new(
      amount: 3000,
      currency: 'JPY'
    ),
    max_payout_period: 'P12M',
    only_with_processor: true
  ),
  subscription_plan_configuration: MerchantWebhookSubscriptionPlanConfiguration.new(
    enabled: true,
    fixed_cycle: true,
    fixed_cycle_amount: true,
    supported_payment_types: [
      'card'
    ],
    min_charge_amount: MerchantWebhookMoneyAmount.new(
      amount: 3000,
      currency: 'JPY'
    ),
    max_payout_period: 'P12M'
  ),
  card_brand_percent_fees: MerchantWebhookCardBrandPercentFees.new(
    visa: 3.6,
    mastercard: 3.6,
    jcb: 3.8
  ),
  subscription_configuration: MerchantWebhookSubscriptionConfiguration.new(
    enabled: true,
    failed_charges_to_cancel: 3,
    suspend_on_cancel: true,
    allow_merchant_amount_patch: false,
    allow_merchant_due_date_patch: false
  ),
  customer_management_configuration: MerchantWebhookCustomerManagementConfiguration.new(
    enabled: true,
    default_roles: [
      'end_user'
    ],
    default_mode: 'live'
  ),
  descriptor_provided_configuration: false,
  card_configuration: MerchantWebhookCardConfiguration.new(
    enabled: true,
    debit_enabled: true,
    prepaid_enabled: false,
    foreign_cards_allowed: false,
    three_ds_required: true,
    allow_direct_token_creation: false
  ),
  qr_scan_configuration: MerchantWebhookQrScanConfiguration.new(
    enabled: true,
    forbidden_qr_scan_gateways: [
      'wechat'
    ]
  ),
  convenience_configuration: MerchantWebhookConvenienceConfiguration.new(
    enabled: true,
    expiration: 'P3D'
  ),
  paidy_configuration: MerchantWebhookPaidyConfiguration.new(
    enabled: false
  ),
  qr_merchant_configuration: MerchantWebhookQrMerchantConfiguration.new(
    enabled: false
  ),
  online_configuration: MerchantWebhookOnlineConfiguration.new(
    enabled: true
  ),
  bank_transfer_configuration: MerchantWebhookBankTransferConfiguration.new(
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
    remind_notification_enabled: true
  ),
  platform_credentials_enabled: true,
  tagged_platform_credentials_enabled: false,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

