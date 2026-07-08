
# Issuer Token

Issuer token or bank transfer instruction payload.

*This model accepts additional fields of type Object.*

## Structure

`IssuerToken`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `payment_type` | [`IssuerTokenPaymentType`](../../doc/models/issuer-token-payment-type.md) | Required | The type of payment method for the charge. |
| `issuer_token` | `String` | Optional | (Online) The token or payment URL provided by the payment provider for the consumer to execute. |
| `call_method` | [`IssuerTokenCallMethod`](../../doc/models/issuer-token-call-method.md) | Optional | (Online) How the client should execute the token.  - `sdk` / `app`: Direct use in native app environments/SDKs. - `web`: Direct use in special extended browser environments. - `http_get` / `http_post`: Execute directly in a new browser window or iframe. |
| `payload` | [`IssuerTokenPayload`](../../doc/models/issuer-token-payload.md) | Optional | Key-value pairs required to complete the payment action, or null if not applicable. Used when `call_method` is `http_post`. When present, this JSON must be converted by the client to match the expected `content_type` (e.g., transformed into an `application/x-www-form-urlencoded` string) before sending the POST request. |
| `account_id` | `String` | Optional | (Bank Transfer) Unique ID of the bank account issued by the connected system. |
| `branch_code` | `String` | Optional | (Bank Transfer) Branch code. |
| `branch_name` | `String` | Optional | (Bank Transfer) Branch name. |
| `account_holder_name` | `String` | Optional | (Bank Transfer) Account holder name. |
| `account_number` | `String` | Optional | (Bank Transfer) Account number. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
issuer_token = IssuerToken.new(
  payment_type: IssuerTokenPaymentType::ONLINE,
  issuer_token: 'https://example.com/payments/issuer',
  call_method: IssuerTokenCallMethod::HTTP_POST,
  payload: IssuerTokenPayload.new(
    request_data: 'example',
    s_spcd: 'sSpcd6',
    s_cptok: 'sCptok0',
    s_terkn: 'sTerkn6',
    additional_properties: {
      'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
    }
  ),
  account_id: 'account_id4',
  branch_code: 'branch_code0',
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

