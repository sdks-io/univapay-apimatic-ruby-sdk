# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Base Konbini Data Convenience Store schema.
  class BaseKonbiniDataConvenienceStore
    BASE_KONBINI_DATA_CONVENIENCE_STORE = [
      # TODO: Write general description for SEVEN_ELEVEN
      SEVEN_ELEVEN = 'seven_eleven'.freeze,

      # TODO: Write general description for FAMILY_MART
      FAMILY_MART = 'family_mart'.freeze,

      # TODO: Write general description for LAWSON
      LAWSON = 'lawson'.freeze,

      # TODO: Write general description for MINI_STOP
      MINI_STOP = 'mini_stop'.freeze,

      # TODO: Write general description for SEICO_MART
      SEICO_MART = 'seico_mart'.freeze,

      # TODO: Write general description for PAY_EASY
      PAY_EASY = 'pay_easy'.freeze,

      # TODO: Write general description for DAILY_YAMAZAKI
      DAILY_YAMAZAKI = 'daily_yamazaki'.freeze,

      # TODO: Write general description for YAMAZAKI_DAILY_STORE
      YAMAZAKI_DAILY_STORE = 'yamazaki_daily_store'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BASE_KONBINI_DATA_CONVENIENCE_STORE.include?(value)
    end

    def self.from_value(value, default_value = SEVEN_ELEVEN)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'seven_eleven' then SEVEN_ELEVEN
      when 'family_mart' then FAMILY_MART
      when 'lawson' then LAWSON
      when 'mini_stop' then MINI_STOP
      when 'seico_mart' then SEICO_MART
      when 'pay_easy' then PAY_EASY
      when 'daily_yamazaki' then DAILY_YAMAZAKI
      when 'yamazaki_daily_store' then YAMAZAKI_DAILY_STORE
      else
        default_value
      end
    end
  end
end
