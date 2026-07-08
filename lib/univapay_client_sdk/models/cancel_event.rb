# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Event type discriminator — always `cancel_finished` for this callback.
  class CancelEvent
    CANCEL_EVENT = [
      # TODO: Write general description for CANCEL_FINISHED
      CANCEL_FINISHED = 'cancel_finished'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CANCEL_EVENT.include?(value)
    end

    def self.from_value(value, default_value = CANCEL_FINISHED)
      return default_value if value.nil?

      default_value
    end
  end
end
