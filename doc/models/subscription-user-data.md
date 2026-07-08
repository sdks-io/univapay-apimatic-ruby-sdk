
# Subscription User Data

Customer-facing payment method summary data.

*This model accepts additional fields of type Object.*

## Structure

`SubscriptionUserData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `type` | `String` | Optional | Type of the resource. |
| `cardholder_name` | `String` | Optional | Cardholder name value. |
| `email` | `String` | Optional | Customer email address. |
| `brand` | `String` | Optional | Brand or network name. |
| `gateway` | `String` | Optional | Gateway identifier. |
| `service_provider` | `String` | Optional | Service provider identifier. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
subscription_user_data = SubscriptionUserData.new(
  type: 'type2',
  cardholder_name: 'cardholder_name6',
  email: 'email8',
  brand: 'brand2',
  gateway: 'gateway8',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

