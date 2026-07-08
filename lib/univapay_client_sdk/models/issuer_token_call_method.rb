# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # (Online) How the client should execute the token.  - `sdk` / `app`: Direct
  # use in native app environments/SDKs. - `web`: Direct use in special extended
  # browser environments. - `http_get` / `http_post`: Execute directly in a new
  # browser window or iframe.
  class IssuerTokenCallMethod
    ISSUER_TOKEN_CALL_METHOD = [
      # TODO: Write general description for HTTP_GET
      HTTP_GET = 'http_get'.freeze,

      # TODO: Write general description for HTTP_POST
      HTTP_POST = 'http_post'.freeze,

      # TODO: Write general description for SDK
      SDK = 'sdk'.freeze,

      # TODO: Write general description for WEB
      WEB = 'web'.freeze,

      # TODO: Write general description for APP
      APP = 'app'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ISSUER_TOKEN_CALL_METHOD.include?(value)
    end

    def self.from_value(value, default_value = HTTP_GET)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'http_get' then HTTP_GET
      when 'http_post' then HTTP_POST
      when 'sdk' then SDK
      when 'web' then WEB
      when 'app' then APP
      else
        default_value
      end
    end
  end
end
