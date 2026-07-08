# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # SubscriptionsApi
  class SubscriptionsApi < BaseApi
    # Creates a new subscription.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @param [SubscriptionCreateRequest] body Optional parameter: Create
    # Subscription request
    # @return [ApiResponse] Complete http response with raw body and status code.
    def create_subscription(idempotency_key: nil,
                            body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::POST,
                                     '/subscriptions',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'Content-Type'))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .body_param(new_parameter(body))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .body_serializer(proc do |param| param.to_json unless param.nil? end)
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Subscription.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          APIException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          APIException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          APIException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
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

    # Lists all subscriptions across all stores.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [UUID | String] cursor Optional parameter: Cursor pointing to the
    # resource after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_all_subscriptions(limit: 10,
                               cursor: nil,
                               cursor_direction: CursorDirectionQuery::DESC)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/subscriptions',
                                     Server::DEFAULT)
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SubscriptionList.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          APIException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          APIException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          APIException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
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

    # Lists all subscriptions for a specific store.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [String] search Optional parameter: Search by metadata values.
    # @param [SubscriptionStatus] status Optional parameter: Filter
    # subscriptions by current status.
    # @param [ChargeMode] mode Optional parameter: Filter subscriptions by
    # processing mode.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [UUID | String] cursor Optional parameter: Cursor pointing to the
    # resource after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_store_subscriptions(store_id,
                                 search: nil,
                                 status: nil,
                                 mode: nil,
                                 limit: 10,
                                 cursor: nil,
                                 cursor_direction: CursorDirectionQuery::DESC)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/subscriptions',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(search, key: 'search'))
                   .query_param(new_parameter(status, key: 'status'))
                   .query_param(new_parameter(mode, key: 'mode'))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SubscriptionList.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          APIException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          APIException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          APIException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
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

    # Retrieves the details of an existing subscription.  Supports internal
    # polling to wait for status changes.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The Subscription ID.
    # @param [TrueClass | FalseClass] polling Optional parameter: If set to
    # true, instructs the API to internally poll the subscription  status until
    # it changes from 'unverified' (the initial status) to  another status.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_subscription(store_id,
                         id,
                         polling: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/subscriptions/{id}',
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
                    .deserialize_into(Subscription.method(:from_hash))
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

    # Updates the configuration, payment method, or schedule of a specific
    # subscription.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @param [SubscriptionUpdateRequest] body Optional parameter: Properties to
    # update on the subscription.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def update_subscription(store_id,
                            id,
                            idempotency_key: nil,
                            body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/stores/{storeId}/subscriptions/{id}',
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
                    .deserialize_into(Subscription.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('404',
                                          'HTTP 404 Not Found: {$response.body#/code}',
                                          ApiErrorException)
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

    # Cancels an existing subscription. The subscription status will be
    # permanently changed to `canceled` and it cannot be resumed.  Please
    # proceed with caution.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] id Required parameter: The unique identifier of the
    # resource.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def cancel_subscription(store_id,
                            id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::DELETE,
                                     '/stores/{storeId}/subscriptions/{id}',
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

    # Retrieves a list of all historical and scheduled payments for a  specific
    # subscription.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] subscription_id Required parameter: The unique
    # identifier of the subscription.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [UUID | String] cursor Optional parameter: Cursor pointing to the
    # resource after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_subscription_payments(store_id,
                                   subscription_id,
                                   limit: 10,
                                   cursor: nil,
                                   cursor_direction: CursorDirectionQuery::DESC)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/subscriptions/{subscriptionId}/payments',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(subscription_id, key: 'subscriptionId')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SubscriptionPaymentList.method(:from_hash))
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

    # Retrieves the details of an individual payment associated with a specific
    # subscription.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] subscription_id Required parameter: The unique
    # identifier of the subscription.
    # @param [UUID | String] payment_id Required parameter: The unique
    # identifier of the scheduled payment of a subscription
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_subscription_payment(store_id,
                                 subscription_id,
                                 payment_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/subscriptions/{subscriptionId}/payments/{paymentId}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(subscription_id, key: 'subscriptionId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(payment_id, key: 'paymentId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(SubscriptionPayment.method(:from_hash))
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

    # Updates properties of a specific scheduled payment for a subscription. Can
    # be used to change the due date when permitted, mark the payment as paid,
    # schedule a termination status, or set a retry interval.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] subscription_id Required parameter: The unique
    # identifier of the subscription.
    # @param [UUID | String] payment_id Required parameter: The unique
    # identifier of the scheduled payment of a subscription
    # @param [SubscriptionPatchPaymentRequest] body Required parameter: Request
    # payload for updating a scheduled subscription payment.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def update_subscription_payment(store_id,
                                    subscription_id,
                                    payment_id,
                                    body,
                                    idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/stores/{storeId}/subscriptions/{subscriptionId}/payments/{paymentId}',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(subscription_id, key: 'subscriptionId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(payment_id, key: 'paymentId')
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
                    .deserialize_into(SubscriptionPayment.method(:from_hash))
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

    # Retrieves the most recent charge created for a specific subscription.
    # Returns 404 if no charges have been attempted yet.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] subscription_id Required parameter: The unique
    # identifier of the subscription.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_subscription_latest_charge(store_id,
                                       subscription_id)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/subscriptions/{subscriptionId}/charges/latest',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(subscription_id, key: 'subscriptionId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Charge.method(:from_hash))
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

    # Retrieves a paginated list of charges linked to a subscription. Backend
    # search uses the same charge search surface as normal charge listing and
    # adds a subscription filter for the requested subscription.
    # @param [UUID | String] merchant_id Required parameter: The unique
    # identifier of the merchant.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] subscription_id Required parameter: The unique
    # identifier of the subscription.
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [UUID | String] cursor Optional parameter: Cursor pointing to the
    # resource after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_subscription_charges(merchant_id,
                                  store_id,
                                  subscription_id,
                                  limit: 10,
                                  cursor: nil,
                                  cursor_direction: CursorDirectionQuery::DESC)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/merchants/{merchantId}/stores/{storeId}/subscriptions/{subscriptionId}/charges',
                                     Server::DEFAULT)
                   .template_param(new_parameter(merchant_id, key: 'merchantId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(subscription_id, key: 'subscriptionId')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
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

    # Retrieves a paginated list of all charge attempts made for a specific
    # scheduled payment of a subscription. Useful for inspecting retry history.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] subscription_id Required parameter: The unique
    # identifier of the subscription.
    # @param [UUID | String] payment_id Required parameter: The unique
    # identifier of the scheduled payment of a subscription
    # @param [Integer] limit Optional parameter: Maximum number of resources to
    # return in one page.
    # @param [UUID | String] cursor Optional parameter: Cursor pointing to the
    # resource after which pagination should continue.
    # @param [CursorDirectionQuery] cursor_direction Optional parameter:
    # Pagination direction relative to the supplied cursor.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def list_charges_for_subscription_payment(store_id,
                                              subscription_id,
                                              payment_id,
                                              limit: 10,
                                              cursor: nil,
                                              cursor_direction: CursorDirectionQuery::DESC)
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/stores/{storeId}/subscriptions/{subscriptionId}/payments/{paymentId}/charges',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(subscription_id, key: 'subscriptionId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(payment_id, key: 'paymentId')
                                    .is_required(true)
                                    .should_encode(true))
                   .query_param(new_parameter(limit, key: 'limit'))
                   .query_param(new_parameter(cursor, key: 'cursor'))
                   .query_param(new_parameter(cursor_direction, key: 'cursor_direction'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(ChargeList.method(:from_hash))
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

    # Suspends a subscription that is currently `current` or `unpaid`. The
    # `termination_mode` controls when the suspension takes effect: `immediate`
    # (default) suspends right away, `on_next_payment` waits until the next
    # scheduled payment date before suspending.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] subscription_id Required parameter: The unique
    # identifier of the subscription.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @param [SubscriptionSuspendRequest] body Optional parameter: Request
    # payload for suspending a subscription.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def suspend_subscription(store_id,
                             subscription_id,
                             idempotency_key: nil,
                             body: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/stores/{storeId}/subscriptions/{subscriptionId}/suspend',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(subscription_id, key: 'subscriptionId')
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
                    .deserialize_into(Subscription.method(:from_hash))
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

    # Resumes a subscription that is currently `suspended`, setting its status
    # back to `unpaid` and rescheduling the next payment. No request body is
    # required.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] subscription_id Required parameter: The unique
    # identifier of the subscription.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def unsuspend_subscription(store_id,
                               subscription_id,
                               idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/stores/{storeId}/subscriptions/{subscriptionId}/unsuspend',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(subscription_id, key: 'subscriptionId')
                                    .is_required(true)
                                    .should_encode(true))
                   .header_param(new_parameter(idempotency_key, key: 'Idempotency-Key'))
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Subscription.method(:from_hash))
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

    # Replaces the payment method (transaction token) used for a subscription.
    # Useful when a card expires or a customer wants to switch payment methods.
    # The new token must belong to the same store, be active, and match the
    # subscription's processing mode (live/test). One-time tokens are not
    # accepted; use a recurring or subscription token.
    # @param [UUID | String] store_id Required parameter: The unique identifier
    # of the store.
    # @param [UUID | String] subscription_id Required parameter: The unique
    # identifier of the subscription.
    # @param [SubscriptionPatchTokenRequest] body Required parameter: Request
    # payload for replacing a subscription payment token.
    # @param [String] idempotency_key Optional parameter: An optional
    # idempotency key to prevent double charges and duplicate operations. We
    # recommend a randomly generated UUID (v4).
    # @return [ApiResponse] Complete http response with raw body and status code.
    def update_subscription_token(store_id,
                                  subscription_id,
                                  body,
                                  idempotency_key: nil)
      @api_call
        .request(new_request_builder(HttpMethodEnum::PATCH,
                                     '/stores/{storeId}/subscriptions/{subscriptionId}/token',
                                     Server::DEFAULT)
                   .template_param(new_parameter(store_id, key: 'storeId')
                                    .is_required(true)
                                    .should_encode(true))
                   .template_param(new_parameter(subscription_id, key: 'subscriptionId')
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
                    .deserialize_into(Subscription.method(:from_hash))
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
