# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # The reason for the refund (merchant-settable values). `duplicate`: A
  # duplicate charge was made. `fraud`: The charge is fraudulent.
  # `customer_request`: The customer requested the refund.
  class RefundReasonRequest
    REFUND_REASON_REQUEST = [
      # TODO: Write general description for DUPLICATE
      DUPLICATE = 'duplicate'.freeze,

      # TODO: Write general description for FRAUD
      FRAUD = 'fraud'.freeze,

      # TODO: Write general description for CUSTOMER_REQUEST
      CUSTOMER_REQUEST = 'customer_request'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      REFUND_REASON_REQUEST.include?(value)
    end

    def self.from_value(value, default_value = DUPLICATE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'duplicate' then DUPLICATE
      when 'fraud' then FRAUD
      when 'customer_request' then CUSTOMER_REQUEST
      else
        default_value
      end
    end
  end
end
