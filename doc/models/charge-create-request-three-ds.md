
# Charge Create Request Three Ds

Charge Create Request Three Ds schema.

*This model accepts additional fields of type Object.*

## Structure

`ChargeCreateRequestThreeDs`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `redirect_endpoint` | `String` | Optional | URL to redirect the customer to after 3DS authentication. |
| `mode` | [`ChargeCreateRequestThreeDsMode`](../../doc/models/charge-create-request-three-ds-mode.md) | Optional | 3D-Secure authentication type. App Token Secret is required to use 'skip'.<br><br>**Default**: `ChargeCreateRequestThreeDsMode::NORMAL` |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
charge_create_request_three_ds = ChargeCreateRequestThreeDs.new(
  redirect_endpoint: 'redirect_endpoint6',
  mode: ChargeCreateRequestThreeDsMode::NORMAL,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

