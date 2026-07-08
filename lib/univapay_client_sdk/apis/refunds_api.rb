# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # RefundsApi
  class RefundsApi < BaseApi
    # Retrieves a list of all refunds for a specific charge.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] charge_id Required parameter: The unique identifier
    # of the charge.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [UUID | String] cursor Optional parameter: Cursor pointing to the
    # resource after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @param [String] metadata Optional parameter: Filter refunds by metadata
    # content.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_refunds(store_id,
                     charge_id,
                     limit: 10,
                     cursor: nil,
                     cursor_direction: CursorDirectionQuery::DESC,
                     metadata: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/charges/{chargeId}/refunds',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(charge_id, key: 'chargeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .query_param(new_parameter(metadata, key: 'metadata'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(RefundList.method(:from_hash))
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

    # Creates a refund for a successful charge. The charge must have status
    # `successful`. Konbini and bank transfer charges cannot be refunded. The
    # refund is processed asynchronously — the initial status will be `pending`.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] charge_id Required parameter: The unique identifier
    # of the charge.
    # @param [RefundCreateRequest] body Required parameter: Request payload for
    # creating a refund.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def create_refund(store_id,
                      charge_id,
                      body,
                      idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/stores/{storeId}/charges/{chargeId}/refunds',
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
                    .deserialize_into(Refund.method(:from_hash))
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

    # Retrieves the details of a specific refund. Supports long polling — set
    # `polling=true` to wait until the refund status changes from `pending` to a
    # terminal state (`successful`, `failed`, or `error`).
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] charge_id Required parameter: The unique identifier
    # of the charge.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @param [TrueClass | FalseClass] polling Optional parameter: If `true`, the
    # server holds the connection open until the refund status transitions from
    # `pending` to a terminal state, or until the polling timeout is reached.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_refund(store_id,
                   charge_id,
                   id,
                   polling: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/charges/{chargeId}/refunds/{id}',
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
                    .deserialize_into(Refund.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          APIException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
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

    # Updates metadata, message, or reason on an existing refund.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] charge_id Required parameter: The unique identifier
    # of the charge.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @param [RefundUpdateRequest] body Required parameter: Request payload for
    # updating refund metadata or reason.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def update_refund(store_id,
                      charge_id,
                      id,
                      body,
                      idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/stores/{storeId}/charges/{chargeId}/refunds/{id}',
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
                    .deserialize_into(Refund.method(:from_hash))
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
  end
end
