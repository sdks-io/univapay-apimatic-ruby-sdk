# Stores

Store discovery and configuration endpoints for merchant contexts.

```ruby
stores_api = client.stores
```

## Class Name

`StoresApi`

## Methods

* [List Stores](../../doc/controllers/stores.md#list-stores)
* [Get Store](../../doc/controllers/stores.md#get-store)


# List Stores

Returns stores visible to the current merchant credential. Supports cursor pagination plus `short_id` and free-text `search` filters.

```ruby
def list_stores(limit: 10,
                cursor: nil,
                cursor_direction: CursorDirectionQuery::DESC,
                short_id: nil,
                search: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `limit` | `Integer` | Query, Optional | Maximum number of resources to return in one page.<br><br>**Default**: `10`<br><br>**Constraints**: `<= 100` |
| `cursor` | `UUID \| String` | Query, Optional | Cursor pointing to the resource after which pagination should continue. |
| `cursor_direction` | [`CursorDirectionQuery`](../../doc/models/cursor-direction-query.md) | Query, Optional | Pagination direction relative to the supplied cursor.<br><br>**Default**: `CursorDirectionQuery::DESC` |
| `short_id` | `String` | Query, Optional | Filter by short identifier. |
| `search` | `String` | Query, Optional | Case-insensitive free-text search. |

## Response Type

**200**: Paginated store result set.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`StoreList`](../../doc/models/store-list.md).

## Example Usage

```ruby
limit = 10

cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'

cursor_direction = CursorDirectionQuery::ASC

short_id = 'st_01hxy9p8zw4d'

search = 'tokyo'

result = stores_api.list_stores(
  limit: limit,
  cursor: cursor,
  cursor_direction: cursor_direction,
  short_id: short_id,
  search: search
)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Example Response *(as JSON)*

```json
{
  "items": [
    {
      "id": "11ef0000-0000-4000-8000-000000000022",
      "name": "Tokyo Store",
      "merchant_name": "Example Merchant",
      "created_on": "2026-04-09T07:35:50.000000Z"
    },
    {
      "id": "11ef0000-0000-4000-8000-000000000023",
      "name": "Osaka Store",
      "merchant_name": "Example Merchant",
      "created_on": "2026-04-10T09:12:30.000000Z"
    },
    {
      "id": "11ef0000-0000-4000-8000-000000000024",
      "name": "Online Store",
      "merchant_name": "Example Merchant",
      "created_on": "2026-04-12T14:45:05.000000Z"
    }
  ],
  "has_more": false,
  "total_hits": 3
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Get Store

Returns a single store plus its resolved configuration snapshot for the current merchant context.

```ruby
def get_store(id)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `id` | `UUID \| String` | Template, Required | The unique identifier of the resource. |

## Response Type

**200**: Store resource.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Store`](../../doc/models/store.md).

## Example Usage

```ruby
id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

result = stores_api.get_store(id)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Example Response *(as JSON)*

```json
{
  "id": "11ef0000-0000-4000-8000-000000000022",
  "name": "Tokyo Store",
  "created_on": "2026-04-09T07:35:50.000000Z",
  "configuration": {
    "percent_fee": 3.6,
    "country": "JP",
    "language": "ja",
    "minimum_charge_amounts": [
      {
        "amount": 100,
        "currency": "JPY"
      }
    ],
    "maximum_charge_amounts": [
      {
        "amount": 100000,
        "currency": "JPY"
      }
    ],
    "user_transactions_configuration": {
      "enabled": true,
      "notify_customer": true,
      "notify_on_webhook_failure": true
    },
    "card_configuration": {
      "enabled": true,
      "debit_enabled": true,
      "prepaid_enabled": false,
      "three_ds_required": true
    },
    "online_configuration": {
      "enabled": true
    },
    "bank_transfer_configuration": {
      "enabled": true,
      "match_amount": true,
      "expiration": "P7D"
    }
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |

