# Cancels

Endpoints to create and manage cancellations for charges.

```ruby
cancels_api = client.cancels
```

## Class Name

`CancelsApi`

## Methods

* [List Cancels](../../doc/controllers/cancels.md#list-cancels)
* [Create Cancel](../../doc/controllers/cancels.md#create-cancel)
* [Get Cancel](../../doc/controllers/cancels.md#get-cancel)
* [Update Cancel](../../doc/controllers/cancels.md#update-cancel)


# List Cancels

Returns a paginated list of cancels for the specified charge.

```ruby
def list_cancels(store_id,
                 charge_id,
                 limit: 10,
                 cursor: nil,
                 cursor_direction: CursorDirectionQuery::DESC)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `store_id` | `UUID \| String` | Template, Required | The unique identifier of the store. |
| `charge_id` | `UUID \| String` | Template, Required | The unique identifier of the charge. |
| `limit` | `Integer` | Query, Optional | Maximum number of resources to return in one page.<br><br>**Default**: `10`<br><br>**Constraints**: `<= 100` |
| `cursor` | `UUID \| String` | Query, Optional | Cursor pointing to the resource after which pagination should continue. |
| `cursor_direction` | [`CursorDirectionQuery`](../../doc/models/cursor-direction-query.md) | Query, Optional | Pagination direction relative to the supplied cursor.<br><br>**Default**: `CursorDirectionQuery::DESC` |

## Response Type

**200**: Paginated list of cancels.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`CancelList`](../../doc/models/cancel-list.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'

limit = 10

cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'

cursor_direction = CursorDirectionQuery::ASC

result = cancels_api.list_cancels(
  store_id,
  charge_id,
  limit: limit,
  cursor: cursor,
  cursor_direction: cursor_direction
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
      "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
      "charge_id": "6efb4e5c-690a-40f3-a4f1-0e19c5f84e98",
      "store_id": "76cf4a64-02bc-4cb3-9a28-74622e5928a1",
      "status": "successful",
      "error": {},
      "metadata": {
        "order_id": "ORD-987"
      },
      "mode": "live",
      "created_on": "2026-04-09T07:35:50.000000Z",
      "updated_on": "2026-04-09T07:36:00.000000Z"
    },
    {
      "id": "b2c3d4e5-f6a7-8901-bcde-f23456789012",
      "charge_id": "7fac5f6d-7a1b-51e4-b5f2-1f2ad6f95fa9",
      "store_id": "76cf4a64-02bc-4cb3-9a28-74622e5928a1",
      "status": "successful",
      "error": {},
      "metadata": {
        "order_id": "ORD-988"
      },
      "mode": "live",
      "created_on": "2026-04-10T10:00:00.000000Z",
      "updated_on": "2026-04-10T10:00:12.000000Z"
    },
    {
      "id": "c3d4e5f6-a7b8-9012-cdef-345678901234",
      "charge_id": "80bd6a7e-8b2c-62f5-c6a3-2a3be7a06aba",
      "store_id": "76cf4a64-02bc-4cb3-9a28-74622e5928a1",
      "status": "pending",
      "error": {},
      "metadata": {},
      "mode": "live",
      "created_on": "2026-04-11T14:22:08.000000Z",
      "updated_on": "2026-04-11T14:22:08.000000Z"
    }
  ],
  "has_more": false
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |


# Create Cancel

Creates a new cancellation request for a charge. The charge must be in a cancellable state. Bank transfer and konbini charges that have already been paid cannot be cancelled

```ruby
def create_cancel(store_id,
                  charge_id,
                  idempotency_key: nil,
                  body: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `store_id` | `UUID \| String` | Template, Required | The unique identifier of the store. |
| `charge_id` | `UUID \| String` | Template, Required | The unique identifier of the charge. |
| `idempotency_key` | `String` | Header, Optional | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |
| `body` | [`CancelCreateRequest`](../../doc/models/cancel-create-request.md) | Body, Optional | Optional metadata payload for creating a cancel. |

## Response Type

**201**: Cancel created successfully.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Cancel`](../../doc/models/cancel.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'

idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

body = CancelCreateRequest.new(
  metadata: GenericMetadata.new(
    order_id: 'ORD-987'
  )
)

result = cancels_api.create_cancel(
  store_id,
  charge_id,
  idempotency_key: idempotency_key,
  body: body
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
  "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
  "charge_id": "6efb4e5c-690a-40f3-a4f1-0e19c5f84e98",
  "store_id": "76cf4a64-02bc-4cb3-9a28-74622e5928a1",
  "status": "pending",
  "error": null,
  "metadata": {},
  "mode": "live",
  "created_on": "2026-04-09T07:35:50.000000Z",
  "updated_on": "2026-04-09T07:35:50.000000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |


# Get Cancel

Retrieves a specific cancel by ID. Supports long-polling by appending `?polling=true` to wait for a status change (up to the server timeout). Requires a secret-bearing token.

```ruby
def get_cancel(store_id,
               charge_id,
               id,
               polling: false)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `store_id` | `UUID \| String` | Template, Required | The unique identifier of the store. |
| `charge_id` | `UUID \| String` | Template, Required | The unique identifier of the charge. |
| `id` | `UUID \| String` | Template, Required | The unique identifier of the resource. |
| `polling` | `TrueClass \| FalseClass` | Query, Optional | If `true`, the server holds the connection open until the cancel status changes or the polling timeout is reached.<br><br>**Default**: `false` |

## Response Type

**200**: Cancel details retrieved successfully.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Cancel`](../../doc/models/cancel.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'

id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

polling = false

result = cancels_api.get_cancel(
  store_id,
  charge_id,
  id,
  polling: polling
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
  "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
  "charge_id": "6efb4e5c-690a-40f3-a4f1-0e19c5f84e98",
  "store_id": "76cf4a64-02bc-4cb3-9a28-74622e5928a1",
  "status": "successful",
  "error": null,
  "metadata": {},
  "mode": "live",
  "created_on": "2026-04-09T07:35:50.000000Z",
  "updated_on": "2026-04-09T07:36:00.000000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |


# Update Cancel

Updates metadata on an existing cancel. Requires a secret-bearing token.

```ruby
def update_cancel(store_id,
                  charge_id,
                  id,
                  body,
                  idempotency_key: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `store_id` | `UUID \| String` | Template, Required | The unique identifier of the store. |
| `charge_id` | `UUID \| String` | Template, Required | The unique identifier of the charge. |
| `id` | `UUID \| String` | Template, Required | The unique identifier of the resource. |
| `body` | [`CancelUpdateRequest`](../../doc/models/cancel-update-request.md) | Body, Required | Request payload for updating cancel metadata. |
| `idempotency_key` | `String` | Header, Optional | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |

## Response Type

**200**: Cancel updated successfully.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Cancel`](../../doc/models/cancel.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'

id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

body = CancelUpdateRequest.new(
  metadata: GenericMetadata.new(
    order_id: '12345'
  )
)

idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

result = cancels_api.update_cancel(
  store_id,
  charge_id,
  id,
  body,
  idempotency_key: idempotency_key
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
  "id": "a1b2c3d4-e5f6-7890-abcd-ef1234567890",
  "charge_id": "6efb4e5c-690a-40f3-a4f1-0e19c5f84e98",
  "store_id": "76cf4a64-02bc-4cb3-9a28-74622e5928a1",
  "status": "successful",
  "error": null,
  "metadata": {
    "order_id": "12345"
  },
  "mode": "live",
  "created_on": "2026-04-09T07:35:50.000000Z",
  "updated_on": "2026-04-09T08:00:00.000000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |

