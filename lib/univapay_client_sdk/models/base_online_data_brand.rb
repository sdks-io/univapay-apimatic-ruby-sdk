# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Base Online Data Brand schema.
  class BaseOnlineDataBrand
    BASE_ONLINE_DATA_BRAND = [
      # TODO: Write general description for ALIPAY_ONLINE
      ALIPAY_ONLINE = 'alipay_online'.freeze,

      # TODO: Write general description for ALIPAY_PLUS_ONLINE
      ALIPAY_PLUS_ONLINE = 'alipay_plus_online'.freeze,

      # TODO: Write general description for PAY_PAY_ONLINE
      PAY_PAY_ONLINE = 'pay_pay_online'.freeze,

      # TODO: Write general description for WE_CHAT_ONLINE
      WE_CHAT_ONLINE = 'we_chat_online'.freeze,

      # TODO: Write general description for D_BARAI_ONLINE
      D_BARAI_ONLINE = 'd_barai_online'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      BASE_ONLINE_DATA_BRAND.include?(value)
    end

    def self.from_value(value, default_value = ALIPAY_ONLINE)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'alipay_online' then ALIPAY_ONLINE
      when 'alipay_plus_online' then ALIPAY_PLUS_ONLINE
      when 'pay_pay_online' then PAY_PAY_ONLINE
      when 'we_chat_online' then WE_CHAT_ONLINE
      when 'd_barai_online' then D_BARAI_ONLINE
      else
        default_value
      end
    end
  end
end
