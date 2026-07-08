# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Plan type selector.
  class PlanSettingsType
    PLAN_SETTINGS_TYPE = [
      # TODO: Write general description for FIXED_CYCLES
      FIXED_CYCLES = 'fixed_cycles'.freeze,

      # TODO: Write general description for FIXED_CYCLE_AMOUNT
      FIXED_CYCLE_AMOUNT = 'fixed_cycle_amount'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      PLAN_SETTINGS_TYPE.include?(value)
    end

    def self.from_value(value, default_value = FIXED_CYCLES)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'fixed_cycles' then FIXED_CYCLES
      when 'fixed_cycle_amount' then FIXED_CYCLE_AMOUNT
      else
        default_value
      end
    end
  end
end
