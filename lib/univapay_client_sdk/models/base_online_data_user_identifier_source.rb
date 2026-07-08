# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # The source of the user identifier
  class BaseOnlineDataUserIdentifierSource
    BASE_ONLINE_DATA_USER_IDENTIFIER_SOURCE = [
      # TODO: Write general description for PROVIDED
      PROVIDED = 'provided'.freeze,

      # TODO: Write general description for INTERNAL
      INTERNAL = 'internal'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BASE_ONLINE_DATA_USER_IDENTIFIER_SOURCE.include?(value)
    end

    def self.from_value(value, default_value = PROVIDED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'provided' then PROVIDED
      when 'internal' then INTERNAL
      else
        default_value
      end
    end
  end
end
