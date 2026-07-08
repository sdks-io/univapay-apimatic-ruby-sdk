# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Create Card Data Cvv Authorize schema.
  class TokenCreateCardDataCvvAuthorize < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enabled value.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # ISO-4217 currency code.
    # @return [String]
    attr_accessor :currency

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['currency'] = 'currency'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        currency
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(enabled: false, currency: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @currency = currency unless currency == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash['enabled'] ||= false
      currency = hash.key?('currency') ? hash['currency'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenCreateCardDataCvvAuthorize.new(enabled: enabled,
                                          currency: currency,
                                          additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenCreateCardDataCvvAuthorize | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, currency: #{@currency}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, currency: #{@currency.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
