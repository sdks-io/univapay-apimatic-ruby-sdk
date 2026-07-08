# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Subscription Termination Mode schema.
  class SubscriptionTerminationMode
    SUBSCRIPTION_TERMINATION_MODE = [
      # TODO: Write general description for IMMEDIATE
      IMMEDIATE = 'immediate'.freeze,

      # TODO: Write general description for ON_NEXT_PAYMENT
      ON_NEXT_PAYMENT = 'on_next_payment'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_TERMINATION_MODE.include?(value)
    end

    def self.from_value(value, default_value = IMMEDIATE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'immediate' then IMMEDIATE
      when 'on_next_payment' then ON_NEXT_PAYMENT
      else
        default_value
      end
    end
  end
end
