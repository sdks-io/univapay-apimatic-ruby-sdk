# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Response Card Data Three Ds Status schema.
  class TokenResponseCardDataThreeDsStatus
    TOKEN_RESPONSE_CARD_DATA_THREE_DS_STATUS = [
      # TODO: Write general description for PENDING
      PENDING = 'pending'.freeze,

      # TODO: Write general description for AWAITING
      AWAITING = 'awaiting'.freeze,

      # TODO: Write general description for SUCCESSFUL
      SUCCESSFUL = 'successful'.freeze,

      # TODO: Write general description for FAILED
      FAILED = 'failed'.freeze,

      # TODO: Write general description for ERROR
      ERROR = 'error'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TOKEN_RESPONSE_CARD_DATA_THREE_DS_STATUS.include?(value)
    end

    def self.from_value(value, default_value = PENDING)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'pending' then PENDING
      when 'awaiting' then AWAITING
      when 'successful' then SUCCESSFUL
      when 'failed' then FAILED
      when 'error' then ERROR
      else
        default_value
      end
    end
  end
end
