# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Update the subscription status.  `suspended`: Pause the subscription.
  # `unpaid`: Resume a suspended subscription.
  class SubscriptionUpdateStatus
    SUBSCRIPTION_UPDATE_STATUS = [
      # TODO: Write general description for SUSPENDED
      SUSPENDED = 'suspended'.freeze,

      # TODO: Write general description for UNPAID
      UNPAID = 'unpaid'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_UPDATE_STATUS.include?(value)
    end

    def self.from_value(value, default_value = SUSPENDED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'suspended' then SUSPENDED
      when 'unpaid' then UNPAID
      else
        default_value
      end
    end
  end
end
