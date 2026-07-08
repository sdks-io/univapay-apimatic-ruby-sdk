# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request body to create a cancel for a charge. Only `metadata` is accepted;
  # all other fields are determined server-side. The charge must be in a
  # cancellable state.
  class CancelCreateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # A free-form dictionary for custom metadata.
    # @return [GenericMetadata]
    attr_accessor :metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['metadata'] = 'metadata'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        metadata
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(metadata: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @metadata = metadata unless metadata == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      metadata = GenericMetadata.from_hash(hash['metadata']) if hash['metadata']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CancelCreateRequest.new(metadata: metadata,
                              additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} metadata: #{@metadata}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} metadata: #{@metadata.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
