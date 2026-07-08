# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Transaction Token Mode schema.
  class TransactionTokenMode
    TRANSACTION_TOKEN_MODE = [
      # TODO: Write general description for LIVE
      LIVE = 'live'.freeze,

      # TODO: Write general description for TEST
      TEST = 'test'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSACTION_TOKEN_MODE.include?(value)
    end

    def self.from_value(value, default_value = LIVE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'live' then LIVE
      when 'test' then TEST
      else
        default_value
      end
    end
  end
end
