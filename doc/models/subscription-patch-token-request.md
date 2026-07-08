
# Subscription Patch Token Request

Request body for updating the payment method (transaction token) of a subscription. The new token must belong to the same store, be active, and match the subscription's mode.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionPatchTokenRequest`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `transaction_token_id` | `UUID \| String` | Required | The ID of the new transaction token to use for future subscription payments. Must be a recurring or subscription-type token for the same store. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_patch_token_request = SubscriptionPatchTokenRequest.new(
  transaction_token_id: '11ef3362-3700-c54a-9baa-6f7e6527c9d9',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

