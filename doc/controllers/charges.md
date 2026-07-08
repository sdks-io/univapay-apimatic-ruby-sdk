# Charges

Endpoints to create and manage payments, authorizations, captures, and check payment status.

```ruby
charges_controller = client.charges
```

## Class Name

`ChargesController`

## Methods

* [Create Charge](../../doc/controllers/charges.md#create-charge)
* [List All Charges](../../doc/controllers/charges.md#list-all-charges)
* [List Store Charges](../../doc/controllers/charges.md#list-store-charges)
* [Get Charge](../../doc/controllers/charges.md#get-charge)
* [Update Charge](../../doc/controllers/charges.md#update-charge)
* [Capture Charge](../../doc/controllers/charges.md#capture-charge)
* [Get Charge Issuer Token](../../doc/controllers/charges.md#get-charge-issuer-token)
* [Get Charge Three Ds Issuer Token](../../doc/controllers/charges.md#get-charge-three-ds-issuer-token)
* [List Bank Transfer Ledgers](../../doc/controllers/charges.md#list-bank-transfer-ledgers)
* [Create Customs Declaration](../../doc/controllers/charges.md#create-customs-declaration)
* [Get Customs Declaration](../../doc/controllers/charges.md#get-customs-declaration)
* [Patch Customs Declaration](../../doc/controllers/charges.md#patch-customs-declaration)


# Create Charge

Creates a charge on a payment instrument (e.g. transaction token).

```ruby
def create_charge(idempotency_key: nil,
                  body: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `idempotency_key` | `String` | Header, Optional | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |
| `body` | [`ChargeCreateRequest`](../../doc/models/charge-create-request.md) | Body, Optional | Request payload for creating a charge. |

## Response Type

**201**: Charge Created

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Charge`](../../doc/models/charge.md).

## Example Usage

```ruby
body = ChargeCreateRequest.new(
  transaction_token_id: '11ef32a7-3a71-8662-803f-1bc27702eeec',
  amount: 1000,
  currency: 'JPY',
  metadata: GenericMetadata.new(
    order_id: '12345'
  ),
  redirect: ChargeCreateRequestRedirect.new(
    endpoint: 'https://test.url/'
  )
)

result = charges_controller.create_charge(body: body)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Example Response *(as JSON)*

```json
{
  "id": "11ef32c2-4010-a312-aaff-4b63e4d5f92d",
  "store_id": "11edf541-c42d-653c-8c3d-dfe0a55f95c0",
  "transaction_token_id": "11ef32a7-3a71-8662-803f-1bc27702eeec",
  "transaction_token_type": "recurring",
  "subscription_id": null,
  "merchant_transaction_id": null,
  "requested_amount": 1000,
  "requested_currency": "JPY",
  "requested_amount_formatted": 1000,
  "charged_amount": null,
  "charged_currency": null,
  "charged_amount_formatted": null,
  "fee_amount": null,
  "fee_currency": null,
  "fee_amount_formatted": null,
  "only_direct_currency": false,
  "capture_at": null,
  "descriptor": null,
  "descriptor_phone_number": null,
  "status": "pending",
  "error": null,
  "metadata": {
    "order_id": "12345"
  },
  "mode": "test",
  "created_on": "2024-06-25T07:12:15.16452Z",
  "redirect": {
    "endpoint": "https://test.url/",
    "redirect_id": "11ef32c2-40cf-f772-8325-1798abb1110d"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# List All Charges

Lists all charges across all stores for the authenticated user.

```ruby
def list_all_charges(limit: 10,
                     cursor: nil,
                     cursor_direction: CursorDirectionQuery::DESC,
                     last_four: nil,
                     name: nil,
                     exp_month: nil,
                     exp_year: nil,
                     from: nil,
                     to: nil,
                     email: nil,
                     phone: nil,
                     amount_from: nil,
                     amount_to: nil,
                     currency: nil,
                     mode: nil,
                     metadata: nil,
                     transaction_token_id: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `limit` | `Integer` | Query, Optional | Maximum number of resources to return in one page.<br><br>**Default**: `10`<br><br>**Constraints**: `<= 100` |
| `cursor` | `UUID \| String` | Query, Optional | Cursor pointing to the resource after which pagination should continue. |
| `cursor_direction` | [`CursorDirectionQuery`](../../doc/models/cursor-direction-query.md) | Query, Optional | Pagination direction relative to the supplied cursor.<br><br>**Default**: `CursorDirectionQuery::DESC` |
| `last_four` | `String` | Query, Optional | Filter by the last 4 digits of the card.  **Note:** If specified, `name`, `exp_month`, and `exp_year` must also be included. |
| `name` | `String` | Query, Optional | Filter by cardholder name.  **Note:** If specified, `last_four`, `exp_month`, and `exp_year` must also be included. |
| `exp_month` | `Integer` | Query, Optional | Filter by expiration month.  **Note:** If specified, `last_four`, `name`, and `exp_year` must also be included. |
| `exp_year` | `Integer` | Query, Optional | Filter by expiration year.  **Note:** If specified, `last_four`, `name`, and `exp_month` must also be included. |
| `from` | `String` | Query, Optional | Show charges created on or after this date (ISO-8601). |
| `to` | `String` | Query, Optional | Show charges created before this date (ISO-8601). |
| `email` | `String` | Query, Optional | Filter by email address. |
| `phone` | `String` | Query, Optional | Filter by phone number. |
| `amount_from` | `Integer` | Query, Optional | Show charges with an amount greater than or equal to this value. |
| `amount_to` | `Integer` | Query, Optional | Show charges with an amount strictly less than this value. |
| `currency` | `String` | Query, Optional | Filter by currency (ISO-4217). |
| `mode` | [`ModeQuery`](../../doc/models/mode-query.md) | Query, Optional | Filter by environment mode. |
| `metadata` | `String` | Query, Optional | Filter by metadata. |
| `transaction_token_id` | `UUID \| String` | Query, Optional | Filter by transaction token ID. |

## Response Type

**200**: List of Charges

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`ChargeList`](../../doc/models/charge-list.md).

## Example Usage

```ruby
limit = 10

cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'

cursor_direction = CursorDirectionQuery::ASC

last_four = '4242'

name = 'TARO YAMADA'

exp_month = 12

exp_year = 2026

from = '04/01/2026 00:00:00'

to = '04/30/2026 23:59:59'

email = 'user@example.com'

phone = '+8108012341234'

amount_from = 1000

amount_to = 5000

currency = 'JPY'

mode = ModeQuery::LIVE

metadata = 'order_id: 12345'

transaction_token_id = 'f33b673e-564c-4645-ae17-ca03846a86b7'

result = charges_controller.list_all_charges(
  limit: limit,
  cursor: cursor,
  cursor_direction: cursor_direction,
  last_four: last_four,
  name: name,
  exp_month: exp_month,
  exp_year: exp_year,
  from: from,
  to: to,
  email: email,
  phone: phone,
  amount_from: amount_from,
  amount_to: amount_to,
  currency: currency,
  mode: mode,
  metadata: metadata,
  transaction_token_id: transaction_token_id
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
      "id": "11ef3500-1a2b-4c3d-8e4f-a1b2c3d4e5f0",
      "store_id": "11edf541-c42d-653c-8c3d-dfe0a55f95c0",
      "transaction_token_id": "11ef3501-2b3c-4d5e-9f60-b2c3d4e5f011",
      "transaction_token_type": "one_time",
      "subscription_id": null,
      "merchant_transaction_id": null,
      "requested_amount": 1000,
      "requested_currency": "JPY",
      "requested_amount_formatted": 1000,
      "charged_amount": 1000,
      "charged_currency": "JPY",
      "charged_amount_formatted": 1000,
      "fee_amount": null,
      "fee_currency": null,
      "fee_amount_formatted": null,
      "only_direct_currency": false,
      "capture_at": null,
      "descriptor": null,
      "descriptor_phone_number": null,
      "status": "successful",
      "error": {},
      "metadata": {
        "order_id": "ORD-2001"
      },
      "mode": "live",
      "created_on": "2026-04-09T07:35:50.000000Z",
      "redirect": {},
      "merchant_name": "管理画面ガイド",
      "store_name": "管理画面ガイド_TEST店舗"
    },
    {
      "id": "11ef3502-3c4d-5e6f-a071-c3d4e5f01122",
      "store_id": "22af6520-d53e-764d-9d4e-ef01b66fa6d1",
      "transaction_token_id": "11ef3503-4d5e-6f70-b182-d4e5f0112233",
      "transaction_token_type": "recurring",
      "subscription_id": null,
      "merchant_transaction_id": null,
      "requested_amount": 1250,
      "requested_currency": "USD",
      "requested_amount_formatted": 12.5,
      "charged_amount": 1250,
      "charged_currency": "USD",
      "charged_amount_formatted": 12.5,
      "fee_amount": null,
      "fee_currency": null,
      "fee_amount_formatted": null,
      "only_direct_currency": false,
      "capture_at": null,
      "descriptor": null,
      "descriptor_phone_number": null,
      "status": "successful",
      "error": {},
      "metadata": {
        "order_id": "ORD-2002"
      },
      "mode": "live",
      "created_on": "2026-04-10T10:20:11.000000Z",
      "redirect": {},
      "merchant_name": "管理画面ガイド",
      "store_name": "管理画面ガイド_Online店舗"
    },
    {
      "id": "11ef3504-5e6f-7081-c293-e5f001223344",
      "store_id": "33af7631-e64f-875e-ae5f-f012c77fb7e2",
      "transaction_token_id": "11ef3505-6f70-8192-d3a4-f00112233455",
      "transaction_token_type": "one_time",
      "subscription_id": null,
      "merchant_transaction_id": null,
      "requested_amount": 5000,
      "requested_currency": "JPY",
      "requested_amount_formatted": 5000,
      "charged_amount": 5000,
      "charged_currency": "JPY",
      "charged_amount_formatted": 5000,
      "fee_amount": null,
      "fee_currency": null,
      "fee_amount_formatted": null,
      "only_direct_currency": false,
      "capture_at": null,
      "descriptor": null,
      "descriptor_phone_number": null,
      "status": "successful",
      "error": {},
      "metadata": {
        "order_id": "ORD-2003"
      },
      "mode": "live",
      "created_on": "2026-04-11T14:22:08.000000Z",
      "redirect": {},
      "merchant_name": "管理画面ガイド",
      "store_name": "管理画面ガイド_Osaka店舗"
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


# List Store Charges

Lists all charges for a specific store.

```ruby
def list_store_charges(store_id,
                       limit: 10,
                       cursor: nil,
                       cursor_direction: CursorDirectionQuery::DESC,
                       last_four: nil,
                       name: nil,
                       exp_month: nil,
                       exp_year: nil,
                       from: nil,
                       to: nil,
                       email: nil,
                       phone: nil,
                       amount_from: nil,
                       amount_to: nil,
                       currency: nil,
                       mode: nil,
                       metadata: nil,
                       transaction_token_id: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `store_id` | `UUID \| String` | Template, Required | The unique identifier of the store. |
| `limit` | `Integer` | Query, Optional | Maximum number of resources to return in one page.<br><br>**Default**: `10`<br><br>**Constraints**: `<= 100` |
| `cursor` | `UUID \| String` | Query, Optional | Cursor pointing to the resource after which pagination should continue. |
| `cursor_direction` | [`CursorDirectionQuery`](../../doc/models/cursor-direction-query.md) | Query, Optional | Pagination direction relative to the supplied cursor.<br><br>**Default**: `CursorDirectionQuery::DESC` |
| `last_four` | `String` | Query, Optional | Filter by the last 4 digits of the card.  **Note:** If specified, `name`, `exp_month`, and `exp_year` must also be included. |
| `name` | `String` | Query, Optional | Filter by cardholder name.  **Note:** If specified, `last_four`, `exp_month`, and `exp_year` must also be included. |
| `exp_month` | `Integer` | Query, Optional | Filter by expiration month.  **Note:** If specified, `last_four`, `name`, and `exp_year` must also be included. |
| `exp_year` | `Integer` | Query, Optional | Filter by expiration year.  **Note:** If specified, `last_four`, `name`, and `exp_month` must also be included. |
| `from` | `String` | Query, Optional | Show charges created on or after this date (ISO-8601). |
| `to` | `String` | Query, Optional | Show charges created before this date (ISO-8601). |
| `email` | `String` | Query, Optional | Filter by email address. |
| `phone` | `String` | Query, Optional | Filter by phone number. |
| `amount_from` | `Integer` | Query, Optional | Show charges with an amount greater than or equal to this value. |
| `amount_to` | `Integer` | Query, Optional | Show charges with an amount strictly less than this value. |
| `currency` | `String` | Query, Optional | Filter by currency (ISO-4217). |
| `mode` | [`ModeQuery`](../../doc/models/mode-query.md) | Query, Optional | Filter by environment mode. |
| `metadata` | `String` | Query, Optional | Filter by metadata. |
| `transaction_token_id` | `UUID \| String` | Query, Optional | Filter by transaction token ID. |

## Response Type

**200**: List of Charges

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`ChargeList`](../../doc/models/charge-list.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

limit = 10

cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'

cursor_direction = CursorDirectionQuery::ASC

last_four = '4242'

name = 'TARO YAMADA'

exp_month = 12

exp_year = 2026

from = '04/01/2026 00:00:00'

to = '04/30/2026 23:59:59'

email = 'user@example.com'

phone = '+8108012341234'

amount_from = 1000

amount_to = 5000

currency = 'JPY'

mode = ModeQuery::LIVE

metadata = 'order_id: 12345'

transaction_token_id = 'f33b673e-564c-4645-ae17-ca03846a86b7'

result = charges_controller.list_store_charges(
  store_id,
  limit: limit,
  cursor: cursor,
  cursor_direction: cursor_direction,
  last_four: last_four,
  name: name,
  exp_month: exp_month,
  exp_year: exp_year,
  from: from,
  to: to,
  email: email,
  phone: phone,
  amount_from: amount_from,
  amount_to: amount_to,
  currency: currency,
  mode: mode,
  metadata: metadata,
  transaction_token_id: transaction_token_id
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
      "id": "11ef32c4-9ea8-169c-a6c8-bfc29867a226",
      "store_id": "11edf541-c42d-653c-8c3d-dfe0a55f95c0",
      "transaction_token_id": "11ef32c4-9e89-0cac-bd63-17b9a26af61b",
      "transaction_token_type": "one_time",
      "subscription_id": null,
      "merchant_transaction_id": null,
      "requested_amount": 1000,
      "requested_currency": "JPY",
      "requested_amount_formatted": 1000,
      "charged_amount": 1000,
      "charged_currency": "JPY",
      "charged_amount_formatted": 1000,
      "fee_amount": null,
      "fee_currency": null,
      "fee_amount_formatted": null,
      "only_direct_currency": false,
      "capture_at": null,
      "descriptor": null,
      "descriptor_phone_number": null,
      "status": "successful",
      "error": {},
      "metadata": {
        "univapay-name": "taro yamada",
        "univapay-phone-number": "8029854583"
      },
      "mode": "test",
      "created_on": "2024-06-25T07:29:12.854865Z",
      "redirect": {},
      "merchant_name": "管理画面ガイド",
      "store_name": "管理画面ガイド_TEST店舗"
    },
    {
      "id": "11ef32c3-3cfe-3bc0-abed-0bb96f792078",
      "store_id": "11edf541-c42d-653c-8c3d-dfe0a55f95c0",
      "transaction_token_id": "11ef32c3-3cdd-df92-9dce-c346b9fdf088",
      "transaction_token_type": "one_time",
      "subscription_id": null,
      "merchant_transaction_id": null,
      "requested_amount": 1000,
      "requested_currency": "JPY",
      "requested_amount_formatted": 1000,
      "charged_amount": 1000,
      "charged_currency": "JPY",
      "charged_amount_formatted": 1000,
      "fee_amount": null,
      "fee_currency": null,
      "fee_amount_formatted": null,
      "only_direct_currency": false,
      "capture_at": null,
      "descriptor": null,
      "descriptor_phone_number": null,
      "status": "successful",
      "error": {},
      "metadata": {
        "order_id": "12345"
      },
      "mode": "test",
      "created_on": "2024-06-25T07:19:19.507637Z",
      "redirect": {},
      "merchant_name": "管理画面ガイド",
      "store_name": "管理画面ガイド_TEST店舗"
    }
  ],
  "has_more": false,
  "total_hits": 2
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Get Charge

Retrieves the details of an existing charge.

```ruby
def get_charge(store_id,
               id,
               polling: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `store_id` | `UUID \| String` | Template, Required | The unique identifier of the store. |
| `id` | `UUID \| String` | Template, Required | The unique identifier of the resource. |
| `polling` | `TrueClass \| FalseClass` | Query, Optional | If set to true, instructs the API to internally poll the charge status  until it changes from 'pending' (the initial status) to another status. |

## Response Type

**200**: Charge Details

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Charge`](../../doc/models/charge.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

polling = true

result = charges_controller.get_charge(
  store_id,
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
  "id": "11ef32c2-4010-a312-aaff-4b63e4d5f92d",
  "store_id": "11edf541-c42d-653c-8c3d-dfe0a55f95c0",
  "transaction_token_id": "11ef32a7-3a71-8662-803f-1bc27702eeec",
  "transaction_token_type": "recurring",
  "subscription_id": null,
  "merchant_transaction_id": null,
  "requested_amount": 1000,
  "requested_currency": "JPY",
  "requested_amount_formatted": 1000,
  "charged_amount": 1000,
  "charged_currency": "JPY",
  "charged_amount_formatted": 1000,
  "fee_amount": null,
  "fee_currency": null,
  "fee_amount_formatted": null,
  "only_direct_currency": false,
  "capture_at": null,
  "descriptor": null,
  "descriptor_phone_number": null,
  "status": "successful",
  "error": null,
  "metadata": {
    "order_id": "12345"
  },
  "mode": "test",
  "created_on": "2024-06-25T07:12:15.16452Z",
  "redirect": {
    "endpoint": "https://test.url/",
    "redirect_id": "11ef32c2-40cf-f772-8325-1798abb1110d"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Update Charge

Use this request to add or modify arbitrary metadata on an existing charge.

```ruby
def update_charge(store_id,
                  id,
                  idempotency_key: nil,
                  body: nil)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `store_id` | `UUID \| String` | Template, Required | The unique identifier of the store. |
| `id` | `UUID \| String` | Template, Required | The unique identifier of the resource. |
| `idempotency_key` | `String` | Header, Optional | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |
| `body` | [`ChargeUpdateRequest`](../../doc/models/charge-update-request.md) | Body, Optional | Request payload for updating charge metadata. |

## Response Type

**200**: Updated Charge

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`Charge`](../../doc/models/charge.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

body = ChargeUpdateRequest.new(
  metadata: GenericMetadata.new(
    order_id: '1234'
  )
)

result = charges_controller.update_charge(
  store_id,
  id,
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
  "id": "11ef32c2-4010-a312-aaff-4b63e4d5f92d",
  "store_id": "11edf541-c42d-653c-8c3d-dfe0a55f95c0",
  "transaction_token_id": "11ef32a7-3a71-8662-803f-1bc27702eeec",
  "transaction_token_type": "recurring",
  "subscription_id": null,
  "merchant_transaction_id": null,
  "requested_amount": 1000,
  "requested_currency": "JPY",
  "requested_amount_formatted": 1000,
  "charged_amount": 1000,
  "charged_currency": "JPY",
  "charged_amount_formatted": 1000,
  "fee_amount": null,
  "fee_currency": null,
  "fee_amount_formatted": null,
  "only_direct_currency": false,
  "capture_at": null,
  "descriptor": null,
  "descriptor_phone_number": null,
  "status": "successful",
  "error": null,
  "metadata": {
    "order_id": "1234"
  },
  "mode": "test",
  "created_on": "2024-06-25T07:12:15.16452Z",
  "redirect": {
    "endpoint": "https://test.url/",
    "redirect_id": "11ef32c2-40cf-f772-8325-1798abb1110d"
  }
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Capture Charge

Captures a previously authorized charge (where `capture` was set to false during creation).  The capture amount must be less than or equal to the authorized amount, and the currency must match.

```ruby
def capture_charge(store_id,
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
| `id` | `UUID \| String` | Template, Required | The unique identifier of the resource. |
| `body` | [`ChargeCaptureRequest`](../../doc/models/charge-capture-request.md) | Body, Required | Request payload for capturing an authorized charge. |
| `idempotency_key` | `String` | Header, Optional | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |

## Response Type

**200**: Captured successfully. Returns an empty JSON object.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type `Object`.

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

body = ChargeCaptureRequest.new(
  amount: 1000,
  currency: 'JPY'
)

result = charges_controller.capture_charge(
  store_id,
  id,
  body
)

if result.success?
  puts result.data
elsif result.error?
  warn result.errors
end
```

## Example Response

```
{}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Get Charge Issuer Token

Retrieves the necessary payment execution URL (for online payments) or bank account details (for bank transfers).
**⚠️ Prerequisite:** The charge `status` must be `awaiting` before requesting the issuer token.  If requested while the charge is in any other status, an error will be returned.

```ruby
def get_charge_issuer_token(store_id,
                            id)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `store_id` | `UUID \| String` | Template, Required | The unique identifier of the store. |
| `id` | `UUID \| String` | Template, Required | The unique identifier of the resource. |

## Response Type

**200**: Issuer token or bank transfer instructions retrieved successfully.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`IssuerToken`](../../doc/models/issuer-token.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

result = charges_controller.get_charge_issuer_token(
  store_id,
  id
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
  "issuer_token": "http://test.com/action",
  "call_method": "http_post",
  "payload": {
    "request_data": "example_value"
  },
  "payment_type": "online"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Get Charge Three Ds Issuer Token

Retrieves the 3-D Secure issuer token details required to authenticate a card charge.
**⚠️ Prerequisites:** 1. The charge must be created with `three_ds.mode` set to `normal` or `force`. 2. You must poll the charge until its `status` becomes `awaiting` before making this request.
**Execution Flow:** Once retrieved, the client (browser) must execute an `http_post` request to the `issuer_token` URL.  The `payload` object must be formatted according to the `content_type` (e.g., URL-encoded) and sent in the body. You can execute this via a redirect or inside an iframe. If using an iframe, continue polling the charge status  in the background until it reaches `successful`, `failed`, or `error`.

```ruby
def get_charge_three_ds_issuer_token(store_id,
                                     id)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `store_id` | `UUID \| String` | Template, Required | The unique identifier of the store. |
| `id` | `UUID \| String` | Template, Required | The unique identifier of the resource. |

## Response Type

**200**: 3DS Redirect details retrieved successfully.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`ThreeDsIssuerToken`](../../doc/models/three-ds-issuer-token.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

result = charges_controller.get_charge_three_ds_issuer_token(
  store_id,
  id
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
  "issuer_token": "http://test.com/action",
  "call_method": "http_post",
  "payload": {
    "request_data": "example_value"
  },
  "payment_type": "card",
  "content_type": "application/x-www-form-urlencoded; charset=UTF-8"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# List Bank Transfer Ledgers

Retrieves bank transfer ledger entries associated with a charge.

```ruby
def list_bank_transfer_ledgers(store_id,
                               id)
```

## Authentication

This endpoint requires [JWT_TOKEN](../../doc/auth/oauth-2-bearer-token.md)

## Parameters

| Parameter | Type | Tags | Description |
|  --- | --- | --- | --- |
| `store_id` | `UUID \| String` | Template, Required | The unique identifier of the store. |
| `id` | `UUID \| String` | Template, Required | The unique identifier of the resource. |

## Response Type

**200**: Ledger entries (deposits/payments)

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`BankTransferLedgerList`](../../doc/models/bank-transfer-ledger-list.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

result = charges_controller.list_bank_transfer_ledgers(
  store_id,
  id
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
      "bank_ledger_type": "payment",
      "amount": 1000,
      "balance": 0,
      "virtual_bank_account_holder_name": "test holder name",
      "virtual_bank_account_number": "1234567",
      "virtual_account_id": "test account id",
      "transaction_date": "2024-06-25",
      "transaction_timestamp": "2024-06-25T07:29:16.367347Z",
      "mode": "test",
      "created_on": "2024-06-25T07:29:16.373181Z"
    },
    {
      "bank_ledger_type": "deposit",
      "amount": 1000,
      "balance": 1000,
      "virtual_bank_account_holder_name": "test holder name",
      "virtual_bank_account_number": "1234567",
      "virtual_account_id": "test account id",
      "transaction_date": "2024-06-25",
      "transaction_timestamp": "2024-06-25T07:29:16.36731Z",
      "mode": "test",
      "created_on": "2024-06-25T07:29:16.368093Z"
    }
  ],
  "has_more": false,
  "total_hits": 2
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Create Customs Declaration

Creates a customs declaration for a successful charge. Backend only accepts this request for WeChat Online and WeChat MPM charges. If a declaration already exists and is no longer pending, the backend updates its identity fields and restarts processing instead of creating a new record.

```ruby
def create_customs_declaration(store_id,
                               charge_id,
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
| `body` | [`CustomsDeclarationCreateRequest`](../../doc/models/customs-declaration-create-request.md) | Body, Required | Request payload for creating a customs declaration. |
| `idempotency_key` | `String` | Header, Optional | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |

## Response Type

**200**: Existing customs declaration updated and resubmitted successfully.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`CustomsDeclarationWebhookData`](../../doc/models/customs-declaration-webhook-data.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'

body = CustomsDeclarationCreateRequest.new(
  customs: 'TOKYO',
  merchant_customs_no: '1234567890',
  certificate_id: 'AB1234567',
  certificate_name: 'TARO YAMADA'
)

idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

result = charges_controller.create_customs_declaration(
  store_id,
  charge_id,
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
  "id": "11ef0000-0000-4000-8000-000000000040",
  "charge_id": "11ef0000-0000-4000-8000-000000000001",
  "merchant_id": "11ef0000-0000-4000-8000-000000000020",
  "store_id": "11ef0000-0000-4000-8000-000000000022",
  "mode": "test",
  "gateway": "wechat_online",
  "declaration": {
    "customs": "TOKYO",
    "merchant_customs_no": "1234567890",
    "certificate_id": "AB1234567",
    "certificate_name": "TARO YAMADA"
  },
  "declaration_result": {},
  "status": "pending",
  "error": null,
  "created_on": "2026-04-09T07:35:50.000000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |


# Get Customs Declaration

Retrieves a customs declaration for a charge. Supports long polling when `polling=true`, returning once the declaration leaves its current state or the polling timeout is reached.

```ruby
def get_customs_declaration(store_id,
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
| `id` | `UUID \| String` | Template, Required | The unique identifier of the customs declaration. |
| `polling` | `TrueClass \| FalseClass` | Query, Optional | Hold the request open while waiting for a status change.<br><br>**Default**: `false` |

## Response Type

**200**: Customs declaration retrieved successfully.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`CustomsDeclarationWebhookData`](../../doc/models/customs-declaration-webhook-data.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'

id = '11ef0000-0000-4000-8000-000000000040'

polling = false

result = charges_controller.get_customs_declaration(
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
  "id": "11ef0000-0000-4000-8000-000000000040",
  "charge_id": "11ef0000-0000-4000-8000-000000000001",
  "merchant_id": "11ef0000-0000-4000-8000-000000000020",
  "store_id": "11ef0000-0000-4000-8000-000000000022",
  "mode": "test",
  "gateway": "wechat_online",
  "declaration": {
    "customs": "TOKYO",
    "merchant_customs_no": "1234567890",
    "certificate_id": "AB1234567",
    "certificate_name": "TARO YAMADA"
  },
  "declaration_result": {
    "approving_authority": "TOKYO",
    "trade_id": "wx_trade_12345",
    "transaction_id": "wx_txn_12345",
    "charge_transaction_id": "wx_charge_12345"
  },
  "status": "successful",
  "error": null,
  "created_on": "2026-04-09T07:35:50.000000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |


# Patch Customs Declaration

Updates a customs declaration and requeues processing. Backend patching preserves the original `customs`, `certificate_id`, and `certificate_name` values and only accepts a new `merchant_customs_no`. Pending declarations cannot be patched.

```ruby
def patch_customs_declaration(store_id,
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
| `id` | `UUID \| String` | Template, Required | The unique identifier of the customs declaration. |
| `body` | [`CustomsDeclarationPatchRequest`](../../doc/models/customs-declaration-patch-request.md) | Body, Required | Request payload for patching a customs declaration. |
| `idempotency_key` | `String` | Header, Optional | An optional idempotency key to prevent double charges and duplicate operations. We recommend a randomly generated UUID (v4). |

## Response Type

**200**: Customs declaration updated successfully.

This method returns an [`ApiResponse`](../../doc/api-response.md) instance. The `data` property of this instance returns the response data which is of type [`CustomsDeclarationWebhookData`](../../doc/models/customs-declaration-webhook-data.md).

## Example Usage

```ruby
store_id = '0cab399b-5621-425b-993b-f8507eba1e78'

charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'

id = '11ef0000-0000-4000-8000-000000000040'

body = CustomsDeclarationPatchRequest.new(
  merchant_customs_no: '1234567891'
)

idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

result = charges_controller.patch_customs_declaration(
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
  "id": "11ef0000-0000-4000-8000-000000000040",
  "charge_id": "11ef0000-0000-4000-8000-000000000001",
  "merchant_id": "11ef0000-0000-4000-8000-000000000020",
  "store_id": "11ef0000-0000-4000-8000-000000000022",
  "mode": "test",
  "gateway": "wechat_online",
  "declaration": {
    "customs": "TOKYO",
    "merchant_customs_no": "1234567891",
    "certificate_id": "AB1234567",
    "certificate_name": "TARO YAMADA"
  },
  "declaration_result": {},
  "status": "pending",
  "error": null,
  "created_on": "2026-04-09T07:35:50.000000Z"
}
```

## Errors

| HTTP Status Code | Error Description | Exception Class |
|  --- | --- | --- |
| 400 | Bad Request (400). The request was invalid or could not be processed.  Common codes: VALIDATION_ERROR, INVALID_TOKEN_TYPE, NOT_SUPPORTED_BY_PROCESSOR. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 401 | Unauthorized (401). Authentication failed.  Common codes: AUTH_HEADER_MISSING, INVALID_APP_TOKEN, INVALID_CREDENTIALS. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 403 | Forbidden (403). The request is understood, but access is refused.  This occurs if permissions are insufficient or if a security lock is triggered. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 404 | Not Found (404). The requested resource (e.g., Store ID or Token ID) does not exist. | [`ApiErrorException`](../../doc/models/api-error-exception.md) |
| 429 | Too Many Requests (429). Rate limit exceeded. Returns an empty JSON object in this spec. | `APIException` |

