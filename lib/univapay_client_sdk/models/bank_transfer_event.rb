# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Event type discriminator — always `bank_transfer_status_updated` for this
  # callback.
  class BankTransferEvent
    BANK_TRANSFER_EVENT = [
      # TODO: Write general description for BANK_TRANSFER_STATUS_UPDATED
      BANK_TRANSFER_STATUS_UPDATED = 'bank_transfer_status_updated'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BANK_TRANSFER_EVENT.include?(value)
    end

    def self.from_value(value, default_value = BANK_TRANSFER_STATUS_UPDATED)
      return default_value if value.nil?

      default_value
    end
  end
end
