# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # ChargesApi
  class ChargesApi < BaseApi
    # Creates a charge on a payment instrument (e.g. transaction token).
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @param [ChargeCreateRequest] body Optional parameter: Request payload for
    # creating a charge.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def create_charge(idempotency_key: nil,
                      body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/charges',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Charge.method(:from_hash))
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

    # Lists all charges across all stores for the authenticated user.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [UUID | String] cursor Optional parameter: Cursor pointing to the
    # resource after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @param [String] last_four Optional parameter: Filter by the last 4 digits
    # of the card.  **Note:** If specified, `name`, `exp_month`, and `exp_year`
    # must also be included.
    # @param [String] name Optional parameter: Filter by cardholder name.
    # **Note:** If specified, `last_four`, `exp_month`, and `exp_year` must also
    # be included.
    # @param [Integer] exp_month Optional parameter: Filter by expiration month.
    #  **Note:** If specified, `last_four`, `name`, and `exp_year` must also be
    # included.
    # @param [Integer] exp_year Optional parameter: Filter by expiration year.
    # **Note:** If specified, `last_four`, `name`, and `exp_month` must also be
    # included.
    # @param [String] from Optional parameter: Show charges created on or after
    # this date (ISO-8601).
    # @param [String] to Optional parameter: Show charges created before this
    # date (ISO-8601).
    # @param [String] email Optional parameter: Filter by email address.
    # @param [String] phone Optional parameter: Filter by phone number.
    # @param [Integer] amount_from Optional parameter: Show charges with an
    # amount greater than or equal to this value.
    # @param [Integer] amount_to Optional parameter: Show charges with an amount
    # strictly less than this value.
    # @param [String] currency Optional parameter: Filter by currency
    # (ISO-4217).
    # @param [ModeQuery] mode Optional parameter: Filter by environment mode.
    # @param [String] metadata Optional parameter: Filter by metadata.
    # @param [UUID | String] transaction_token_id Optional parameter: Filter by
    # transaction token ID.
    # @return [ApiResponse] Complete http response with raw body and status code.
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
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/charges',
                                     Server::DEFAULT)
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .query_param(new_parameter(last_four, key: 'last_four'))
                   .query_param(new_parameter(name, key: 'name'))
                   .query_param(new_parameter(exp_month, key: 'exp_month'))
                   .query_param(new_parameter(exp_year, key: 'exp_year'))
                   .query_param(new_parameter(from, key: 'from'))
                   .query_param(new_parameter(to, key: 'to'))
                   .query_param(new_parameter(email, key: 'email'))
                   .query_param(new_parameter(phone, key: 'phone'))
                   .query_param(new_parameter(amount_from, key: 'amount_from'))
                   .query_param(new_parameter(amount_to, key: 'amount_to'))
                   .query_param(new_parameter(currency, key: 'currency'))
                   .query_param(new_parameter(mode, key: 'mode'))
                   .query_param(new_parameter(metadata, key: 'metadata'))
                   .query_param(new_parameter(transaction_token_id, key: 'transaction_token_id'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ChargeList.method(:from_hash))
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

    # Lists all charges for a specific store.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [UUID | String] cursor Optional parameter: Cursor pointing to the
    # resource after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @param [String] last_four Optional parameter: Filter by the last 4 digits
    # of the card.  **Note:** If specified, `name`, `exp_month`, and `exp_year`
    # must also be included.
    # @param [String] name Optional parameter: Filter by cardholder name.
    # **Note:** If specified, `last_four`, `exp_month`, and `exp_year` must also
    # be included.
    # @param [Integer] exp_month Optional parameter: Filter by expiration month.
    #  **Note:** If specified, `last_four`, `name`, and `exp_year` must also be
    # included.
    # @param [Integer] exp_year Optional parameter: Filter by expiration year.
    # **Note:** If specified, `last_four`, `name`, and `exp_month` must also be
    # included.
    # @param [String] from Optional parameter: Show charges created on or after
    # this date (ISO-8601).
    # @param [String] to Optional parameter: Show charges created before this
    # date (ISO-8601).
    # @param [String] email Optional parameter: Filter by email address.
    # @param [String] phone Optional parameter: Filter by phone number.
    # @param [Integer] amount_from Optional parameter: Show charges with an
    # amount greater than or equal to this value.
    # @param [Integer] amount_to Optional parameter: Show charges with an amount
    # strictly less than this value.
    # @param [String] currency Optional parameter: Filter by currency
    # (ISO-4217).
    # @param [ModeQuery] mode Optional parameter: Filter by environment mode.
    # @param [String] metadata Optional parameter: Filter by metadata.
    # @param [UUID | String] transaction_token_id Optional parameter: Filter by
    # transaction token ID.
    # @return [ApiResponse] Complete http response with raw body and status code.
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
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/charges',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .query_param(new_parameter(last_four, key: 'last_four'))
                   .query_param(new_parameter(name, key: 'name'))
                   .query_param(new_parameter(exp_month, key: 'exp_month'))
                   .query_param(new_parameter(exp_year, key: 'exp_year'))
                   .query_param(new_parameter(from, key: 'from'))
                   .query_param(new_parameter(to, key: 'to'))
                   .query_param(new_parameter(email, key: 'email'))
                   .query_param(new_parameter(phone, key: 'phone'))
                   .query_param(new_parameter(amount_from, key: 'amount_from'))
                   .query_param(new_parameter(amount_to, key: 'amount_to'))
                   .query_param(new_parameter(currency, key: 'currency'))
                   .query_param(new_parameter(mode, key: 'mode'))
                   .query_param(new_parameter(metadata, key: 'metadata'))
                   .query_param(new_parameter(transaction_token_id, key: 'transaction_token_id'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ChargeList.method(:from_hash))
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

    # Retrieves the details of an existing charge.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @param [TrueClass | FalseClass] polling Optional parameter: If set to
    # true, instructs the API to internally poll the charge status  until it
    # changes from 'pending' (the initial status) to another status.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_charge(store_id,
                   id,
                   polling: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/charges/{id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(polling, key: 'polling'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Charge.method(:from_hash))
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

    # Use this request to add or modify arbitrary metadata on an existing
    # charge.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @param [ChargeUpdateRequest] body Optional parameter: Request payload for
    # updating charge metadata.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def update_charge(store_id,
                      id,
                      idempotency_key: nil,
                      body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/stores/{storeId}/charges/{id}',
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
                    .deserialize_into(Charge.method(:from_hash))
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

    # Captures a previously authorized charge (where `capture` was set to false
    # during creation).  The capture amount must be less than or equal to the
    # authorized amount, and the currency must match.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @param [ChargeCaptureRequest] body Required parameter: Request payload for
    # capturing an authorized charge.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def capture_charge(store_id,
                       id,
                       body,
                       idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/stores/{storeId}/charges/{id}/capture',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body)
                                .is_required(true))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:json_deserialize))
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

    # Retrieves the necessary payment execution URL (for online payments) or
    # bank account details (for bank transfers).
    # **⚠️ Prerequisite:** The charge `status` must be `awaiting` before
    # requesting the issuer token.  If requested while the charge is in any
    # other status, an error will be returned.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_charge_issuer_token(store_id,
                                id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/charges/{id}/issuer_token',
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
                    .deserialize_into(IssuerToken.method(:from_hash))
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

    # Retrieves the 3-D Secure issuer token details required to authenticate a
    # card charge.
    # **⚠️ Prerequisites:** 1. The charge must be created with `three_ds.mode`
    # set to `normal` or `force`. 2. You must poll the charge until its `status`
    # becomes `awaiting` before making this request.
    # **Execution Flow:** Once retrieved, the client (browser) must execute an
    # `http_post` request to the `issuer_token` URL.  The `payload` object must
    # be formatted according to the `content_type` (e.g., URL-encoded) and sent
    # in the body. You can execute this via a redirect or inside an iframe. If
    # using an iframe, continue polling the charge status  in the background
    # until it reaches `successful`, `failed`, or `error`.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_charge_three_ds_issuer_token(store_id,
                                         id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/charges/{id}/three_ds/issuer_token',
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

    # Retrieves bank transfer ledger entries associated with a charge.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_bank_transfer_ledgers(store_id,
                                   id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/charges/{id}/bank_transfer_ledgers',
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
                    .deserialize_into(BankTransferLedgerList.method(:from_hash))
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

    # Creates a customs declaration for a successful charge. Backend only
    # accepts this request for WeChat Online and WeChat MPM charges. If a
    # declaration already exists and is no longer pending, the backend updates
    # its identity fields and restarts processing instead of creating a new
    # record.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] charge_id Required parameter: The unique identifier
    # of the charge.
    # @param [CustomsDeclarationCreateRequest] body Required parameter: Request
    # payload for creating a customs declaration.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def create_customs_declaration(store_id,
                                   charge_id,
                                   body,
                                   idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/stores/{storeId}/charges/{chargeId}/customs',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(charge_id, key: 'chargeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body)
                                .is_required(true))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CustomsDeclarationWebhookData.method(:from_hash))
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

    # Retrieves a customs declaration for a charge. Supports long polling when
    # `polling=true`, returning once the declaration leaves its current state or
    # the polling timeout is reached.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] charge_id Required parameter: The unique identifier
    # of the charge.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # customs declaration.
    # @param [TrueClass | FalseClass] polling Optional parameter: Hold the
    # request open while waiting for a status change.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_customs_declaration(store_id,
                                charge_id,
                                id,
                                polling: false)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/charges/{chargeId}/customs/{id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(charge_id, key: 'chargeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(polling, key: 'polling'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CustomsDeclarationWebhookData.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          APIException)
                    .local_error_template('409',
                                          'HTTP 409 Conflict: {$response.body#/code}',
                                          APIException)
                    .local_error_template('429',
                                          'HTTP 429 Rate Limited: {$response.body#/code}',
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

    # Updates a customs declaration and requeues processing. Backend patching
    # preserves the original `customs`, `certificate_id`, and `certificate_name`
    # values and only accepts a new `merchant_customs_no`. Pending declarations
    # cannot be patched.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] charge_id Required parameter: The unique identifier
    # of the charge.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # customs declaration.
    # @param [CustomsDeclarationPatchRequest] body Required parameter: Request
    # payload for patching a customs declaration.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def patch_customs_declaration(store_id,
                                  charge_id,
                                  id,
                                  body,
                                  idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/stores/{storeId}/charges/{chargeId}/customs/{id}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(charge_id, key: 'chargeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(id, key: 'id')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .body_param(new_parameter(body)
                                .is_required(true))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(CustomsDeclarationWebhookData.method(:from_hash))
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
