# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Base Online Data Os Type schema.
  class BaseOnlineDataOsType
    BASE_ONLINE_DATA_OS_TYPE = [
      # TODO: Write general description for ANDROID
      ANDROID = 'android'.freeze,

      # TODO: Write general description for IOS
      IOS = 'ios'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BASE_ONLINE_DATA_OS_TYPE.include?(value)
    end

    def self.from_value(value, default_value = ANDROID)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'android' then ANDROID
      when 'ios' then IOS
      else
        default_value
      end
    end
  end
end
