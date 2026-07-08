
# Base Online Data

Base Online Data schema.

*This model accepts additional fields of type Object.*

## Structure

`BaseOnlineData`

## Fields

| Name | Type | Tags | Description |
|  --- | --- | --- | --- |
| `brand` | [`BaseOnlineDataBrand`](../../doc/models/base-online-data-brand.md) | Optional | Base Online Data Brand schema. |
| `call_method` | [`BaseOnlineDataCallMethod`](../../doc/models/base-online-data-call-method.md) | Optional | Base Online Data Call Method schema. |
| `os_type` | [`BaseOnlineDataOsType`](../../doc/models/base-online-data-os-type.md) | Optional | Base Online Data Os Type schema. |
| `user_identifier` | `String` | Optional | Consumer specific identifier required by some gateways for fraud prevention. |
| `user_identifier_source` | [`BaseOnlineDataUserIdentifierSource`](../../doc/models/base-online-data-user-identifier-source.md) | Optional | The source of the user identifier |
| `additional_properties` | `Hash[String, Object]` | Optional | - |

## Example

```ruby
base_online_data = BaseOnlineData.new(
  brand: BaseOnlineDataBrand::D_BARAI_ONLINE,
  call_method: BaseOnlineDataCallMethod::WEB,
  os_type: BaseOnlineDataOsType::ANDROID,
  user_identifier: 'user_identifier6',
  user_identifier_source: BaseOnlineDataUserIdentifierSource::PROVIDED,
  additional_properties: {
    'exampleAdditionalProperty' => JSON.parse('{"key1":"val1","key2":"val2"}')
  }
)
```

