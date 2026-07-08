
# Getting Started with Univapay Public API

## Introduction

OpenAPI specification for the Univapay Online Payment API.

### Authentication (JWT)

This API uses JWT (JSON Web Tokens) for authentication via the HTTP `Authorization` header. To authenticate, you must generate an **Application Token** in the Univapay dashboard.  This generates two components: 1. **Token (`{jwt}`)** 2. **Secret (`{secret}`)**

#### ⚠️ Security Warning

The **Secret** grants extensive privileges (e.g., creating charges, capturing authorized card charges, refunding).
**NEVER expose the `{secret}` in frontend application code** (e.g., consumer browsers) or public repositories. It is strictly for backend server-to-server communication.
*Univapay is not responsible for accidents caused by leaked secrets.*

#### Bearer Auth Formats

Depending on where you are calling the API from, the Bearer format changes:

* **Frontend / Browser (No Secret)**: `Bearer {jwt}`
  *(Used for Widgets or Inline Forms. You must register your allowed domains in the dashboard when creating the token).*
* **Backend / Server (With Secret)**: `Bearer {secret}.{jwt}`
  *(Required for all backend processing).*

We will assume that all requests are going to originate from a backend server thus, all requests will require the secret

#### Token Types

* **Store Token**: Grants full access to requests for that specific store.
* **Merchant Token**: Can't create transaction tokens but can access data from multiple stores.

## Install the Package

Install the gem from the command line:

```bash
gem install univapay-apimatic-sdk -v 0.0.4
```

Or add the gem to your Gemfile and run `bundle`:

```ruby
gem 'univapay-apimatic-sdk', '0.0.4'
```

For additional gem details, see the [RubyGems page for the univapay-apimatic-sdk gem](https://rubygems.org/gems/univapay-apimatic-sdk/versions/0.0.4).

## IRB Console Usage

You can explore the SDK interactively using IRB in two ways

### 1. Use IRB with Installed Gem

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and type the following command to start the irb console.

```bash
irb
```

Now you can load the SDK in the IRB

```ruby
require 'univapay_client_sdk'
include UnivapayClientSdk
```

### 2. Use IRB within SDK

Open your system terminal (Command Prompt, Git Bash or macOS Terminal) and navigate to the root folder of SDK.

```
cd path/to/univapay_client_sdk
```

Now you can start the preconfigured irb console by running the following command

```bash
ruby bin/console
```

**_Note:_** This automatically loads the SDK from lib/

## Test the SDK

To run the tests, navigate to the root directory of the SDK in your terminal and execute the following command:

```
rake
```

## Initialize the API Client

**_Note:_** Documentation for the client can be found [here.](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/client.md)

The following parameters are configurable for the API Client:

| Parameter | Type | Description |
|  --- | --- | --- |
| base_url | `String` | Base URL for the API<br>*Default*: `'https://api.univapay.com'` |
| environment | [`Environment`](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/README.md#environments) | The API environment. <br> **Default: `Environment.PRODUCTION`** |
| connection | `Faraday::Connection` | The Faraday connection object passed by the SDK user for making requests |
| adapter | `Faraday::Adapter` | The Faraday adapter object passed by the SDK user for performing http requests |
| timeout | `Float` | The value to use for connection timeout. <br> **Default: 30** |
| max_retries | `Integer` | The number of times to retry an endpoint call if it fails. <br> **Default: 0** |
| retry_interval | `Float` | Pause in seconds between retries. <br> **Default: 1** |
| backoff_factor | `Float` | The amount to multiply each successive retry's interval amount by in order to provide backoff. <br> **Default: 2** |
| retry_statuses | `Array` | A list of HTTP statuses to retry. <br> **Default: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524]** |
| retry_methods | `Array` | A list of HTTP methods to retry. <br> **Default: %i[get put]** |
| http_callback | `HttpCallBack` | The Http CallBack allows defining callables for pre and post API calls. |
| proxy_settings | [`ProxySettings`](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/proxy-settings.md) | Optional proxy configuration to route HTTP requests through a proxy server. |
| logging_configuration | [`LoggingConfiguration`](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/logging-configuration.md) | The SDK logging configuration for API calls |
| bearer_auth_credentials | [`BearerAuthCredentials`](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/auth/oauth-2-bearer-token.md) | The credential object for OAuth 2 Bearer token |

The API client can be initialized as follows:

### Code-Based Client Initialization

```ruby
require 'univapay_client_sdk'
include UnivapayClientSdk

client = Client.new(
  bearer_auth_credentials: BearerAuthCredentials.new(
    access_token: 'AccessToken'
  ),
  environment: Environment::PRODUCTION,
  base_url: 'https://api.univapay.com',
  logging_configuration: LoggingConfiguration.new(
    log_level: Logger::INFO,
    request_logging_config: RequestLoggingConfiguration.new(
      log_body: true
    ),
    response_logging_config: ResponseLoggingConfiguration.new(
      log_headers: true
    )
  )
)
```

### Environment-Based Client Initialization

```ruby
require 'univapay_client_sdk'
include UnivapayClientSdk

# Create client from environment
client = Client.from_env
```

See the [`Environment-Based Client Initialization`](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/environment-based-client-initialization.md) section for details.

## Environments

The SDK can be configured to use a different environment for making API calls. Available environments are:

### Fields

| Name | Description |
|  --- | --- |
| PRODUCTION | **Default** Production Server |

## Authorization

This API uses the following authentication schemes.

* [`JWT_TOKEN (OAuth 2 Bearer token)`](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/auth/oauth-2-bearer-token.md)

## List of APIs

* [Transaction Tokens](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/controllers/transaction-tokens.md)
* [Charges](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/controllers/charges.md)
* [Refunds](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/controllers/refunds.md)
* [Subscriptions](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/controllers/subscriptions.md)
* [Cancels](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/controllers/cancels.md)
* [Merchants](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/controllers/merchants.md)
* [Stores](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/controllers/stores.md)
* [Webhooks](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/controllers/webhooks.md)

## Webhooks

* [Charge Updated](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/charge-updated-handler.md)
* [Charge Finished](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/charge-finished-handler.md)
* [Token Created](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/token-created-handler.md)
* [Token Updated](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/token-updated-handler.md)
* [Token Three Ds Updated](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/token-three-ds-updated-handler.md)
* [Token Cvv Auth Updated](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/token-cvv-auth-updated-handler.md)
* [Token Cvv Auth Check Updated](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/token-cvv-auth-check-updated-handler.md)
* [Token Replaced](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/token-replaced-handler.md)
* [Recurring Token Deleted](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/recurring-token-deleted-handler.md)
* [Refund](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/refund-handler.md)
* [Cancel](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/cancel-handler.md)
* [Subscription Created](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/subscription-created-handler.md)
* [Subscription Payment](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/subscription-payment-handler.md)
* [Subscription Completed](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/subscription-completed-handler.md)
* [Subscription Failure](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/subscription-failure-handler.md)
* [Subscription Canceled](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/subscription-canceled-handler.md)
* [Subscription Suspended](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/subscription-suspended-handler.md)
* [Bank-Transfer](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/bank-transfer-handler.md)
* [Customs](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/events/webhooks/customs-handler.md)

## SDK Infrastructure

### Configuration

* [ProxySettings](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/proxy-settings.md)
* [Environment-Based Client Initialization](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/environment-based-client-initialization.md)
* [AbstractLogger](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/abstract-logger.md)
* [LoggingConfiguration](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/logging-configuration.md)
* [RequestLoggingConfiguration](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/request-logging-configuration.md)
* [ResponseLoggingConfiguration](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/response-logging-configuration.md)

### HTTP

* [HttpResponse](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/http-response.md)
* [HttpRequest](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/http-request.md)

### Utilities

* [ApiResponse](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/api-response.md)
* [ApiHelper](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/api-helper.md)
* [DateTimeHelper](https://www.github.com/sdks-io/univapay-apimatic-ruby-sdk/tree/0.0.4/doc/date-time-helper.md)

