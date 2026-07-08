# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Subscription Status schema.
  class SubscriptionStatus
    SUBSCRIPTION_STATUS = [
      # TODO: Write general description for UNVERIFIED
      UNVERIFIED = 'unverified'.freeze,

      # TODO: Write general description for UNCONFIRMED
      UNCONFIRMED = 'unconfirmed'.freeze,

      # TODO: Write general description for CANCELED
      CANCELED = 'canceled'.freeze,

      # TODO: Write general description for UNPAID
      UNPAID = 'unpaid'.freeze,

      # TODO: Write general description for CURRENT
      CURRENT = 'current'.freeze,

      # TODO: Write general description for SUSPENDED
      SUSPENDED = 'suspended'.freeze,

      # TODO: Write general description for COMPLETED
      COMPLETED = 'completed'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_STATUS.include?(value)
    end

    def self.from_value(value, default_value = UNVERIFIED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'unverified' then UNVERIFIED
      when 'unconfirmed' then UNCONFIRMED
      when 'canceled' then CANCELED
      when 'unpaid' then UNPAID
      when 'current' then CURRENT
      when 'suspended' then SUSPENDED
      when 'completed' then COMPLETED
      else
        default_value
      end
    end
  end
end
