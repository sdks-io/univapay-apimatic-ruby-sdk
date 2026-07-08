# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Event type discriminator — always `refund_finished` for this callback.
  class RefundEvent
    REFUND_EVENT = [
      # TODO: Write general description for REFUND_FINISHED
      REFUND_FINISHED = 'refund_finished'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      REFUND_EVENT.include?(value)
    end

    def self.from_value(value, default_value = REFUND_FINISHED)
      return default_value if value.nil?

      default_value
    end
  end
end
