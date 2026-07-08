# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Execution method. Currently, only 'http_post' is supported.
  class ThreeDsIssuerTokenCallMethod
    THREE_DS_ISSUER_TOKEN_CALL_METHOD = [
      # TODO: Write general description for HTTP_POST
      HTTP_POST = 'http_post'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      THREE_DS_ISSUER_TOKEN_CALL_METHOD.include?(value)
    end

    def self.from_value(value, default_value = HTTP_POST)
      return default_value if value.nil?

      default_value
    end
  end
end
