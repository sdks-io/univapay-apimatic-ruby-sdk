# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Transaction Token Create Request Type schema.
  class TransactionTokenCreateRequestType
    TRANSACTION_TOKEN_CREATE_REQUEST_TYPE = [
      # TODO: Write general description for ONE_TIME
      ONE_TIME = 'one_time'.freeze,

      # TODO: Write general description for SUBSCRIPTION
      SUBSCRIPTION = 'subscription'.freeze,

      # TODO: Write general description for RECURRING
      RECURRING = 'recurring'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      TRANSACTION_TOKEN_CREATE_REQUEST_TYPE.include?(value)
    end

    def self.from_value(value, default_value = ONE_TIME)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'one_time' then ONE_TIME
      when 'subscription' then SUBSCRIPTION
      when 'recurring' then RECURRING
      else
        default_value
      end
    end
  end
end
