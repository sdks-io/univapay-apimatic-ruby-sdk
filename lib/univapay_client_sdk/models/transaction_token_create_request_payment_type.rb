# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Transaction Token Create Request Payment Type schema.
  class TransactionTokenCreateRequestPaymentType
    TRANSACTION_TOKEN_CREATE_REQUEST_PAYMENT_TYPE = [
      # TODO: Write general description for CARD
      CARD = 'card'.freeze,

      # TODO: Write general description for ONLINE
      ONLINE = 'online'.freeze,

      # TODO: Write general description for KONBINI
      KONBINI = 'konbini'.freeze,

      # TODO: Write general description for BANK_TRANSFER
      BANK_TRANSFER = 'bank_transfer'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSACTION_TOKEN_CREATE_REQUEST_PAYMENT_TYPE.include?(value)
    end

    def self.from_value(value, default_value = CARD)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'card' then CARD
      when 'online' then ONLINE
      when 'konbini' then KONBINI
      when 'bank_transfer' then BANK_TRANSFER
      else
        default_value
      end
    end
  end
end
