
# Three Ds Issuer Token

3-D Secure issuer token payload.

*This model accepts additional fields of type Object.*

## Structure

`ThreeDsIssuerToken`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_type` | `String` | Required, Constant | Only 'card' is supported for 3-D Secure issuer tokens.<br><br>**Value**: `'card'` |
| `issuer_token` | `String` | Required | The 3-D Secure authentication URL to which the client must send the request. |
| `call_method` | `String` | Required, Constant | Execution method. Currently, only 'http_post' is supported.<br><br>**Value**: `'http_post'` |
| `payload` | [`IssuerTokenPayload`](../../doc/models/issuer-token-payload.md) | Optional | Key-value pairs required to complete the payment action, or null if not applicable. Used when `call_method` is `http_post`. When present, this JSON must be converted by the client to match the expected `content_type` (e.g., transformed into an `application/x-www-form-urlencoded` string) before sending the POST request. |
| `content_type` | `String` | Required | The expected content type of the payload required by the card issuer's endpoint  (e.g., 'application/x-www-form-urlencoded; charset=UTF-8'). |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
three_ds_issuer_token = ThreeDsIssuerToken.new(
  payment_type: 'card',
  issuer_token: 'https://example.com/resource',
  call_method: 'http_post',
  content_type: 'application/x-www-form-urlencoded; charset=UTF-8',
  payload: IssuerTokenPayload.new(
    request_data: 'example',
    s_spcd: 'sSpcd6',
    s_cptok: 'sCptok0',
    s_terkn: 'sTerkn6',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

