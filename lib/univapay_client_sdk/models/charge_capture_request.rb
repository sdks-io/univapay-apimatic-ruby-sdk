# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request payload for capturing an authorized charge.
  class ChargeCaptureRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The amount to capture. Must be less than or equal to the authorized
    # amount.
    # @return [Integer]
    attr_accessor :amount

    # ISO-4217 currency code. Must exactly match the currency used during
    # authorization.
    # @return [String]
    attr_accessor :currency

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(amount:, currency:, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @amount = amount
      @currency = currency
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      amount = hash.key?('amount') ? hash['amount'] : nil
      currency = hash.key?('currency') ? hash['currency'] : nil

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      ChargeCaptureRequest.new(amount: amount,
                               currency: currency,
                               additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount}, currency: #{@currency}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} amount: #{@amount.inspect}, currency: #{@currency.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
