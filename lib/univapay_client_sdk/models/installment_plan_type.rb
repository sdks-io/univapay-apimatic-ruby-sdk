# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Plan type selector.
  class InstallmentPlanType
    INSTALLMENT_PLAN_TYPE = [
      # TODO: Write general description for REVOLVING
      REVOLVING = 'revolving'.freeze,

      # TODO: Write general description for FIXED_CYCLES
      FIXED_CYCLES = 'fixed_cycles'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INSTALLMENT_PLAN_TYPE.include?(value)
    end

    def self.from_value(value, default_value = REVOLVING)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'revolving' then REVOLVING
      when 'fixed_cycles' then FIXED_CYCLES
      else
        default_value
      end
    end
  end
end
