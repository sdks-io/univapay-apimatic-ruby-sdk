
# Token Response Online Data

Token Response Online Data schema.

*This model accepts additional fields of type Object.*

## Structure

`TokenResponseOnlineData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `brand` | [`BaseOnlineDataBrand`](../../doc/models/base-online-data-brand.md) | Optional | Base Online Data Brand schema. |
| `call_method` | [`BaseOnlineDataCallMethod`](../../doc/models/base-online-data-call-method.md) | Optional | Base Online Data Call Method schema. |
| `os_type` | [`BaseOnlineDataOsType`](../../doc/models/base-online-data-os-type.md) | Optional | Base Online Data Os Type schema. |
| `user_identifier` | `String` | Optional | Consumer specific identifier required by some gateways for fraud prevention. |
| `user_identifier_source` | [`BaseOnlineDataUserIdentifierSource`](../../doc/models/base-online-data-user-identifier-source.md) | Optional | The source of the user identifier |
| `issuer_token` | `String` | Optional | Token provided by the issuer (if applicable). |
| `issuer_token_payload` | `String` | Optional | Additional payload from the issuer. |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
token_response_online_data = TokenResponseOnlineData.new(
  brand: BaseOnlineDataBrand::WE_CHAT_ONLINE,
  call_method: BaseOnlineDataCallMethod::WEB,
  os_type: BaseOnlineDataOsType::ANDROID,
  user_identifier: 'wechat_open_id_12345',
  user_identifier_source: BaseOnlineDataUserIdentifierSource::PROVIDED,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

