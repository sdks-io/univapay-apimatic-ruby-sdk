# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Required if plan_type is fixed_cycles.
  class InstallmentFixedCycles
    INSTALLMENT_FIXED_CYCLES = [
      # 3 cycles
      CYCLES_3 = 3,

      # 5 cycles
      CYCLES_5 = 5,

      # 6 cycles
      CYCLES_6 = 6,

      # 10 cycles
      CYCLES_10 = 10,

      # 12 cycles
      CYCLES_12 = 12,

      # 15 cycles
      CYCLES_15 = 15,

      # 18 cycles
      CYCLES_18 = 18,

      # 20 cycles
      CYCLES_20 = 20,

      # 24 cycles
      CYCLES_24 = 24
    ].freeze

    def self.validate(value)
      return false if value.nil?

      INSTALLMENT_FIXED_CYCLES.include?(value)
    end

    def self.from_value(value, default_value = CYCLES_3)
      return default_value if value.nil?

      str = value.to_s.strip
      if str.match?(/\A\d+\z/)
        num = str.to_i
        return num if INSTALLMENT_FIXED_CYCLES.include?(num)

        return default_value
      end

      case str.downcase
      when 'cycles_3' then CYCLES_3
      when 'cycles_5' then CYCLES_5
      when 'cycles_6' then CYCLES_6
      when 'cycles_10' then CYCLES_10
      when 'cycles_12' then CYCLES_12
      when 'cycles_15' then CYCLES_15
      when 'cycles_18' then CYCLES_18
      when 'cycles_20' then CYCLES_20
      when 'cycles_24' then CYCLES_24
      else
        default_value
      end
    end
  end
end
