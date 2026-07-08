# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # The type of payment method for the charge.
  class IssuerTokenPaymentType
    ISSUER_TOKEN_PAYMENT_TYPE = [
      # TODO: Write general description for ONLINE
      ONLINE = 'online'.freeze,

      # TODO: Write general description for BANK_TRANSFER
      BANK_TRANSFER = 'bank_transfer'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      ISSUER_TOKEN_PAYMENT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = ONLINE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'online' then ONLINE
      when 'bank_transfer' then BANK_TRANSFER
      else
        default_value
      end
    end
  end
end
