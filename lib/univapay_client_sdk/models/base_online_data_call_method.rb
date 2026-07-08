# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Base Online Data Call Method schema.
  class BaseOnlineDataCallMethod
    BASE_ONLINE_DATA_CALL_METHOD = [
      # TODO: Write general description for HTTP_GET
      HTTP_GET = 'http_get'.freeze,

      # TODO: Write general description for HTTP_POST
      HTTP_POST = 'http_post'.freeze,

      # TODO: Write general description for HTTP_GET_MOBILE
      HTTP_GET_MOBILE = 'http_get_mobile'.freeze,

      # TODO: Write general description for SDK
      SDK = 'sdk'.freeze,

      # TODO: Write general description for WEB
      WEB = 'web'.freeze,

      # TODO: Write general description for APP
      APP = 'app'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BASE_ONLINE_DATA_CALL_METHOD.include?(value)
    end

    def self.from_value(value, default_value = HTTP_GET)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'http_get' then HTTP_GET
      when 'http_post' then HTTP_POST
      when 'http_get_mobile' then HTTP_GET_MOBILE
      when 'sdk' then SDK
      when 'web' then WEB
      when 'app' then APP
      else
        default_value
      end
    end
  end
end
