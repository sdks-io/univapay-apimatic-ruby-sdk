# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Only 'card' is supported for 3-D Secure issuer tokens.
  class ThreeDsIssuerTokenPaymentType
    THREE_DS_ISSUER_TOKEN_PAYMENT_TYPE = [
      # TODO: Write general description for CARD
      CARD = 'card'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      THREE_DS_ISSUER_TOKEN_PAYMENT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = CARD)
      return default_value if value.nil?

      default_value
    end
  end
end
