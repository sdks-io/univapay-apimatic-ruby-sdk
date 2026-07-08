# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Per-card velocity limit configuration.
  class MerchantWebhookLimitChargeByCardConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Maximum number of charges allowed in the time window.
    # @return [Integer]
    attr_accessor :quantity_of_charges

    # ISO-8601 duration for the rolling window.
    # @return [String]
    attr_accessor :duration_window

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['quantity_of_charges'] = 'quantity_of_charges'
      @_hash['duration_window'] = 'duration_window'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        quantity_of_charges
        duration_window
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(quantity_of_charges: SKIP, duration_window: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @quantity_of_charges = quantity_of_charges unless quantity_of_charges == SKIP
      @duration_window = duration_window unless duration_window == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      quantity_of_charges =
        hash.key?('quantity_of_charges') ? hash['quantity_of_charges'] : SKIP
      duration_window =
        hash.key?('duration_window') ? hash['duration_window'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookLimitChargeByCardConfiguration.new(quantity_of_charges: quantity_of_charges,
                                                        duration_window: duration_window,
                                                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} quantity_of_charges: #{@quantity_of_charges}, duration_window:"\
      " #{@duration_window}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} quantity_of_charges: #{@quantity_of_charges.inspect}, duration_window:"\
      " #{@duration_window.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
