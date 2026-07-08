# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Customs declaration status returned by the backend.
  class CustomsDeclarationWebhookStatus
    CUSTOMS_DECLARATION_WEBHOOK_STATUS = [
      # TODO: Write general description for PENDING
      PENDING = 'pending'.freeze,

      # TODO: Write general description for SUCCESSFUL
      SUCCESSFUL = 'successful'.freeze,

      # TODO: Write general description for FAILED
      FAILED = 'failed'.freeze,

      # TODO: Write general description for ERROR
      ERROR = 'error'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CUSTOMS_DECLARATION_WEBHOOK_STATUS.include?(value)
    end

    def self.from_value(value, default_value = PENDING)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'pending' then PENDING
      when 'successful' then SUCCESSFUL
      when 'failed' then FAILED
      when 'error' then ERROR
      else
        default_value
      end
    end
  end
end
