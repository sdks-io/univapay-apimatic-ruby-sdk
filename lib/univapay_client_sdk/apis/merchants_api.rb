# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # MerchantsApi
  class MerchantsApi < BaseApi
    # Returns merchant identity and the effective configuration resolved from
    # bearer credentials. Treat this as the canonical introspection endpoint for
    # merchant integrations.
    # @return [ApiResponse] Complete http response with raw body and status code.
    def get_current_merchant
      @api_call
        .request(new_request_builder(HttpMethodEnum::GET,
                                     '/me',
                                     Server::DEFAULT)
                   .header_param(new_parameter('application/json', key: 'accept'))
                   .auth(Single.new('JWT_TOKEN')))
        .response(new_response_handler
                    .deserializer(APIHelper.method(:custom_type_deserializer))
                    .deserialize_into(Merchant.method(:from_hash))
                    .is_api_response(true)
                    .local_error_template('401',
                                          'HTTP 401 Unauthorized: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('403',
                                          'HTTP 403 Forbidden: {$response.body#/code}',
                                          ApiErrorException)
                    .local_error_template('429',
                                          'HTTP 429 Rate Limited: {$response.body#/code}',
                                          APIException)
                    .local_error_template('400',
                                          'HTTP 400 Bad Request: {$response.body#/code}',
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
  end
end
