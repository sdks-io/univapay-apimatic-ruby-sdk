# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Bank Transfer Ledger Bank Ledger Type schema.
  class BankTransferLedgerBankLedgerType
    BANK_TRANSFER_LEDGER_BANK_LEDGER_TYPE = [
      # TODO: Write general description for DEPOSIT
      DEPOSIT = 'deposit'.freeze,

      # TODO: Write general description for PAYMENT
      PAYMENT = 'payment'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BANK_TRANSFER_LEDGER_BANK_LEDGER_TYPE.include?(value)
    end

    def self.from_value(value, default_value = DEPOSIT)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'deposit' then DEPOSIT
      when 'payment' then PAYMENT
      else
        default_value
      end
    end
  end
end
