# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Structured detail entry describing a single API validation or business
  # error.
  class ApiErrorDetail < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The field name of the parameter that caused the error (lower_snake_case).
    # @return [String]
    attr_accessor :field

    # Detailed reason for the nested error (UPPER_SNAKE_CASE or English
    # description).
    # @return [String]
    attr_accessor :reason

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['field'] = 'field'
      @_hash['reason'] = 'reason'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        field
        reason
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(field: SKIP, reason: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @field = field unless field == SKIP
      @reason = reason unless reason == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      field = hash.key?('field') ? hash['field'] : SKIP
      reason = hash.key?('reason') ? hash['reason'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      ApiErrorDetail.new(field: field,
                         reason: reason,
                         additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} field: #{@field}, reason: #{@reason}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} field: #{@field.inspect}, reason: #{@reason.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
