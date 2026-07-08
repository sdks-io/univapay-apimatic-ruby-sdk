# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # TransactionTokensApi
  class TransactionTokensApi < BaseApi
    # Exchange raw payment data for a secure token. **PCI DSS Compliance
    # Required** if sending raw card numbers.
    # @param [TransactionTokenCreateRequest] body Required parameter: Request
    # payload for creating a transaction token.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def create_transaction_token(body,
                                 idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/tokens',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body)
                                .is_required(true))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(TransactionToken.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('429',
                                          'HTTP 429 Rate Limited: {$response.body#/code}',
                                          APIException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
                                          APIException)
                    .local_error_template('409',
                                          'HTTP 409 Conflict: {$response.body#/code}',
                                          APIException)
                    .local_error_template('500',
                                          'HTTP 500 Server Error: {$response.body#/code}',
                                          APIException)
                    .local_error_template('503',
                                          'HTTP 503 Unavailable: {$response.body#/code}',
                                          APIException)
                    .local_error_template('504',
                                          'HTTP 504 Timeout: {$response.body#/code}',
                                          APIException)
                    .local_error_template('default',
                                          'HTTP {$statusCode}: {$response.body#/code}',
                                          APIException))
        .execute
    end

    # Lists all transaction tokens across all stores.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [UUID | String] cursor Optional parameter: Cursor pointing to the
    # resource after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_all_transaction_tokens(limit: 10,
                                    cursor: nil,
                                    cursor_direction: CursorDirectionQuery::DESC)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/tokens',
                                     Server::DEFAULT)
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(TransactionTokenList.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('429',
                                          'HTTP 429 Rate Limited: {$response.body#/code}',
                                          APIException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
                                          APIException)
                    .local_error_template('409',
                                          'HTTP 409 Conflict: {$response.body#/code}',
                                          APIException)
                    .local_error_template('500',
                                          'HTTP 500 Server Error: {$response.body#/code}',
                                          APIException)
                    .local_error_template('503',
                                          'HTTP 503 Unavailable: {$response.body#/code}',
                                          APIException)
                    .local_error_template('504',
                                          'HTTP 504 Timeout: {$response.body#/code}',
                                          APIException)
                    .local_error_template('default',
                                          'HTTP {$statusCode}: {$response.body#/code}',
                                          APIException))
        .execute
    end

    # Lists all transaction tokens for a specific store.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [UUID | String] cursor Optional parameter: Cursor pointing to the
    # resource after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_store_transaction_tokens(store_id,
                                      limit: 10,
                                      cursor: nil,
                                      cursor_direction: CursorDirectionQuery::DESC)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/tokens',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(TransactionTokenList.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('429',
                                          'HTTP 429 Rate Limited: {$response.body#/code}',
                                          APIException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
                                          APIException)
                    .local_error_template('409',
                                          'HTTP 409 Conflict: {$response.body#/code}',
                                          APIException)
                    .local_error_template('500',
                                          'HTTP 500 Server Error: {$response.body#/code}',
                                          APIException)
                    .local_error_template('503',
                                          'HTTP 503 Unavailable: {$response.body#/code}',
                                          APIException)
                    .local_error_template('504',
                                          'HTTP 504 Timeout: {$response.body#/code}',
                                          APIException)
                    .local_error_template('default',
                                          'HTTP {$statusCode}: {$response.body#/code}',
                                          APIException))
        .execute
    end

    # Retrieves the details of an existing transaction token.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_transaction_token(store_id,
                              id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/tokens/{id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(TransactionToken.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('429',
                                          'HTTP 429 Rate Limited: {$response.body#/code}',
                                          APIException)
                    .local_error_template('409',
                                          'HTTP 409 Conflict: {$response.body#/code}',
                                          APIException)
                    .local_error_template('500',
                                          'HTTP 500 Server Error: {$response.body#/code}',
                                          APIException)
                    .local_error_template('503',
                                          'HTTP 503 Unavailable: {$response.body#/code}',
                                          APIException)
                    .local_error_template('504',
                                          'HTTP 504 Timeout: {$response.body#/code}',
                                          APIException)
                    .local_error_template('default',
                                          'HTTP {$statusCode}: {$response.body#/code}',
                                          APIException))
        .execute
    end

    # ⚠️ **LEGACY WARNING: Discouraged Operation**
    # While it is technically possible to update a transaction token, this
    # practice is highly discouraged and is maintained solely for legacy
    # reasons.
    # **Updating raw card details requires your server environment to be fully
    # PCI DSS compliant.**
    # **Recommended Approach:** Instead of updating an existing token, it is
    # best practice to create an entirely new transaction token using Univapay's
    # frontend integrations (**Link Form**, **Widget**, or **Inline Form**).
    # This allows Univapay to securely handle the customer's payment data
    # without it ever touching your servers.
    # --- **Legacy Usage:** Updates CVV, Address, Email, or Card Details.
    # *Note: If updating only the CVV to resolve a
    # `RECURRING_USAGE_REQUIRES_CVV` error, the application token secret is not
    # required.*
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @param [TransactionTokenUpdateRequest] body Optional parameter: Request
    # payload for updating a transaction token.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def update_transaction_token(store_id,
                                 id,
                                 idempotency_key: nil,
                                 body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/stores/{storeId}/tokens/{id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(TransactionToken.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('429',
                                          'HTTP 429 Rate Limited: {$response.body#/code}',
                                          APIException)
                    .local_error_template('409',
                                          'HTTP 409 Conflict: {$response.body#/code}',
                                          APIException)
                    .local_error_template('500',
                                          'HTTP 500 Server Error: {$response.body#/code}',
                                          APIException)
                    .local_error_template('503',
                                          'HTTP 503 Unavailable: {$response.body#/code}',
                                          APIException)
                    .local_error_template('504',
                                          'HTTP 504 Timeout: {$response.body#/code}',
                                          APIException)
                    .local_error_template('default',
                                          'HTTP {$statusCode}: {$response.body#/code}',
                                          APIException))
        .execute
    end

    # Deletes a specific transaction token.
    # ⚠️ **WARNING: Breaks Linked Subscriptions**
    # Please note that deleting a transaction token will immediately prevent any
    # linked recurring charges or subscriptions from being processed. Proceed
    # with caution.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def delete_transaction_token(store_id,
                                 id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/stores/{storeId}/tokens/{id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .is_response_void(true)
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('429',
                                          'HTTP 429 Rate Limited: {$response.body#/code}',
                                          APIException)
                    .local_error_template('409',
                                          'HTTP 409 Conflict: {$response.body#/code}',
                                          APIException)
                    .local_error_template('500',
                                          'HTTP 500 Server Error: {$response.body#/code}',
                                          APIException)
                    .local_error_template('503',
                                          'HTTP 503 Unavailable: {$response.body#/code}',
                                          APIException)
                    .local_error_template('504',
                                          'HTTP 504 Timeout: {$response.body#/code}',
                                          APIException)
                    .local_error_template('default',
                                          'HTTP {$statusCode}: {$response.body#/code}',
                                          APIException))
        .execute
    end

    # Retrieves the information required to execute 3-D Secure authentication
    # when creating a recurring transaction token.
    # **⚠️ Important Notes:** 1. **PCI DSS Compliance:** This endpoint is only
    # available to PCI DSS compliant merchants who are authorized to send raw
    # card data directly via the API to create tokens. 2. **Target Tokens:**
    # This only applies to tokens where `type` is `recurring`. For `one_time` or
    # `subscription` tokens, 3-D Secure is requested during charge creation, not
    # token creation. 3. **Execution Flow:**
    #    - After creating the token, poll the token object until
    # `data.three_ds.status` becomes `awaiting`.
    #    - Once `awaiting`, use this endpoint to fetch the issuer token details.
    #    - Format the returned `payload` according to the `content_type` (e.g.,
    # URL-encoded) and execute an `http_post` request from the consumer's
    # browser to the `issuer_token` URL.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_token_three_ds_issuer_token(store_id,
                                        id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/tokens/{id}/three_ds/issuer_token',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ThreeDsIssuerToken.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('429',
                                          'HTTP 429 Rate Limited: {$response.body#/code}',
                                          APIException)
                    .local_error_template('409',
                                          'HTTP 409 Conflict: {$response.body#/code}',
                                          APIException)
                    .local_error_template('500',
                                          'HTTP 500 Server Error: {$response.body#/code}',
                                          APIException)
                    .local_error_template('503',
                                          'HTTP 503 Unavailable: {$response.body#/code}',
                                          APIException)
                    .local_error_template('504',
                                          'HTTP 504 Timeout: {$response.body#/code}',
                                          APIException)
                    .local_error_template('default',
                                          'HTTP {$statusCode}: {$response.body#/code}',
                                          APIException))
        .execute
    end
  end
end
