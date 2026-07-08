# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # A free-form dictionary for custom metadata.
  class GenericMetadata < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Example of a custom metadata key.
    # @return [String]
    attr_accessor :order_id

    # Consumer name passed to payment processors that require it (e.g., konbini,
    # bank transfer).
    # @return [String]
    attr_accessor :univapay_name

    # Consumer phone number passed to payment processors that require it.
    # @return [String]
    attr_accessor :univapay_phone_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['order_id'] = 'order_id'
      @_hash['univapay_name'] = 'univapay-name'
      @_hash['univapay_phone_number'] = 'univapay-phone-number'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        order_id
        univapay_name
        univapay_phone_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(order_id: SKIP, univapay_name: SKIP,
                   univapay_phone_number: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @order_id = order_id unless order_id == SKIP
      @univapay_name = univapay_name unless univapay_name == SKIP
      @univapay_phone_number = univapay_phone_number unless univapay_phone_number == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      order_id = hash.key?('order_id') ? hash['order_id'] : SKIP
      univapay_name = hash.key?('univapay-name') ? hash['univapay-name'] : SKIP
      univapay_phone_number =
        hash.key?('univapay-phone-number') ? hash['univapay-phone-number'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |x|
                    APIHelper.deserialize_union_type(UnionTypeLookUp.get(:GenericMetadataValue), x)
                  }
      )

      # Create object from extracted values.
      GenericMetadata.new(order_id: order_id,
                          univapay_name: univapay_name,
                          univapay_phone_number: univapay_phone_number,
                          additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [GenericMetadata | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} order_id: #{@order_id}, univapay_name: #{@univapay_name},"\
      " univapay_phone_number: #{@univapay_phone_number}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} order_id: #{@order_id.inspect}, univapay_name: #{@univapay_name.inspect},"\
      " univapay_phone_number: #{@univapay_phone_number.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
