
# Subscription Patch Payment Request

Request body for updating a scheduled payment. All fields are optional. Omitted fields are left unchanged.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionPatchPaymentRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `due_date` | `Date` | Optional | New due date for this payment (YYYY-MM-DD).  Only available to merchants with permission to edit payment dates. |
| `is_paid` | `TrueClass \| FalseClass` | Optional | Mark this payment as paid. Setting to `true` will trigger scheduling  of the next payment in the cycle. |
| `terminate_with_status` | [`SubscriptionTerminateWithStatus`](../../doc/models/subscription-terminate-with-status.md) | Optional | Schedule a status transition on a payment's due date. Set to `suspended` or `canceled` to schedule termination. Send `null` to cancel a previously scheduled transition. |
| `retry_interval` | `String` | Optional | ISO-8601 Duration override for the retry interval on a scheduled payment (for example `P3D`). Send `null` to clear. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_patch_payment_request = SubscriptionPatchPaymentRequest.new(
  due_date: Date.iso8601('2026-09-01'),
  is_paid: false,
  terminate_with_status: nil,
  retry_interval: 'P3D',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

