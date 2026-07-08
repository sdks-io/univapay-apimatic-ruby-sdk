# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Event type discriminator — always `customs_declaration_finished` for this
  # callback.
  class CustomsDeclarationEvent
    CUSTOMS_DECLARATION_EVENT = [
      # TODO: Write general description for CUSTOMS_DECLARATION_FINISHED
      CUSTOMS_DECLARATION_FINISHED = 'customs_declaration_finished'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      CUSTOMS_DECLARATION_EVENT.include?(value)
    end

    def self.from_value(value, default_value = CUSTOMS_DECLARATION_FINISHED)
      return default_value if value.nil?

      default_value
    end
  end
end
