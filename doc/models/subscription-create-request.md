
# Subscription Create Request

Request payload for creating a subscription.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionCreateRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_token_id` | `UUID \| String` | Required | Transaction token ID authorized for recurring payments. |
| `amount` | `Integer` | Required | Amount to be charged in each cycle. |
| `currency` | `String` | Required | ISO-4217 currency code. |
| `initial_amount` | `Integer` | Optional | Optional different amount for the first charge. |
| `period` | [`SubscriptionPeriod`](../../doc/models/subscription-period.md) | Optional | Subscription Period schema. |
| `cyclical_period` | `String` | Optional | ISO-8601 Duration for custom frequency (e.g., P3D, P2M).  Cannot be used if 'period' is specified. |
| `schedule_settings` | [`SubscriptionScheduleSettings`](../../doc/models/subscription-schedule-settings.md) | Optional | Schedule settings applied to a subscription. |
| `installment_plan` | [`SubscriptionInstallmentPlan`](../../doc/models/subscription-installment-plan.md) | Optional | Configuration for credit card company side installments. |
| `subscription_plan` | [`SubscriptionPlanSettings`](../../doc/models/subscription-plan-settings.md) | Optional | Configuration for limited-cycle subscriptions (Univapay side). |
| `first_charge_authorization_only` | `TrueClass \| FalseClass` | Optional | If true, the first charge will only be an authorization (Hold).<br><br>**Default**: `false` |
| `first_charge_capture_after` | `String` | Optional | ISO-8601 Duration for auto-capture if authorization only is true.  Allowed days: P1D to P6D. |
| `metadata` | [`GenericMetadata`](../../doc/models/generic-metadata.md) | Optional | A free-form dictionary for custom metadata. |
| `three_ds` | [`ChargeCreateRequestThreeDs`](../../doc/models/charge-create-request-three-ds.md) | Optional | Charge Create Request Three Ds schema. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_create_request = SubscriptionCreateRequest.new(
  transaction_token_id: '11ef32a7-3a71-8662-803f-1bc27702eeec',
  amount: 1250,
  currency: 'USD',
  initial_amount: 102,
  period: SubscriptionPeriod::MONTHLY,
  cyclical_period: 'cyclical_period4',
  schedule_settings: SubscriptionScheduleSettings.new,
  installment_plan: SubscriptionInstallmentPlan.new,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

