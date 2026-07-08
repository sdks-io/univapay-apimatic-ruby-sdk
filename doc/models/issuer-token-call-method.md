
# Issuer Token Call Method

(Online) How the client should execute the token.  - `sdk` / `app`: Direct use in native app environments/SDKs. - `web`: Direct use in special extended browser environments. - `http_get` / `http_post`: Execute directly in a new browser window or iframe.

## Enumeration

`IssuerTokenCallMethod`

## Fields

| Name |
|  --- |
| `HTTP_GET` |
| `HTTP_POST` |
| `SDK` |
| `WEB` |
| `APP` |

## Example

```ruby
issuer_token_call_method = IssuerTokenCallMethod::APP
```

