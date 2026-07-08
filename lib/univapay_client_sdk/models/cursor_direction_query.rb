# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Sort direction based on resource id.
  class CursorDirectionQuery
    CURSOR_DIRECTION_QUERY = [
      # TODO: Write general description for ASC
      ASC = 'asc'.freeze,

      # TODO: Write general description for DESC
      DESC = 'desc'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CURSOR_DIRECTION_QUERY.include?(value)
    end

    def self.from_value(value, default_value = ASC)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'asc' then ASC
      when 'desc' then DESC
      else
        default_value
      end
    end
  end
end
