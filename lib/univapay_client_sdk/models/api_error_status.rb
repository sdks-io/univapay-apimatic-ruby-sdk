# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Always returns 'error'.
  class ApiErrorStatus
    API_ERROR_STATUS = [
      # TODO: Write general description for ERROR
      ERROR = 'error'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      API_ERROR_STATUS.include?(value)
    end

    def self.from_value(value, default_value = ERROR)
      return default_value if value.nil?

      default_value
    end
  end
end
