# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Payment status of a bank transfer charge.
  class BankTransferPaymentStatus
    BANK_TRANSFER_PAYMENT_STATUS = [
      # TODO: Write general description for UNPAID
      UNPAID = 'unpaid'.freeze,

      # TODO: Write general description for INSUFFICIENT
      INSUFFICIENT = 'insufficient'.freeze,

      # TODO: Write general description for EXACT
      EXACT = 'exact'.freeze,

      # TODO: Write general description for EXCEEDED
      EXCEEDED = 'exceeded'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BANK_TRANSFER_PAYMENT_STATUS.include?(value)
    end

    def self.from_value(value, default_value = UNPAID)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'unpaid' then UNPAID
      when 'insufficient' then INSUFFICIENT
      when 'exact' then EXACT
      when 'exceeded' then EXCEEDED
      else
        default_value
      end
    end
  end
end
