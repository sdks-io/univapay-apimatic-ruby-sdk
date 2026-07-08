# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Subscription Period schema.
  class SubscriptionPeriod
    SUBSCRIPTION_PERIOD = [
      # TODO: Write general description for DAILY
      DAILY = 'daily'.freeze,

      # TODO: Write general description for WEEKLY
      WEEKLY = 'weekly'.freeze,

      # TODO: Write general description for BIWEEKLY
      BIWEEKLY = 'biweekly'.freeze,

      # TODO: Write general description for MONTHLY
      MONTHLY = 'monthly'.freeze,

      # TODO: Write general description for QUARTERLY
      QUARTERLY = 'quarterly'.freeze,

      # TODO: Write general description for SEMIANNUALLY
      SEMIANNUALLY = 'semiannually'.freeze,

      # TODO: Write general description for ANNUALLY
      ANNUALLY = 'annually'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      SUBSCRIPTION_PERIOD.include?(value)
    end

    def self.from_value(value, default_value = DAILY)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'daily' then DAILY
      when 'weekly' then WEEKLY
      when 'biweekly' then BIWEEKLY
      when 'monthly' then MONTHLY
      when 'quarterly' then QUARTERLY
      when 'semiannually' then SEMIANNUALLY
      when 'annually' then ANNUALLY
      else
        default_value
      end
    end
  end
end
