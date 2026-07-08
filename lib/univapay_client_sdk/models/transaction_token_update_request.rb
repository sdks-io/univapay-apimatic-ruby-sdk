# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request payload for updating a transaction token.
  class TransactionTokenUpdateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Customer email address.
    # @return [String]
    attr_accessor :email

    # A free-form dictionary for custom metadata.
    # @return [GenericMetadata]
    attr_accessor :metadata

    # Transaction Token Update Request Data schema.
    # @return [TransactionTokenUpdateRequestData]
    attr_accessor :data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['email'] = 'email'
      @_hash['metadata'] = 'metadata'
      @_hash['data'] = 'data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        email
        metadata
        data
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(email: SKIP, metadata: SKIP, data: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @email = email unless email == SKIP
      @metadata = metadata unless metadata == SKIP
      @data = data unless data == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      email = hash.key?('email') ? hash['email'] : SKIP
      metadata = GenericMetadata.from_hash(hash['metadata']) if hash['metadata']
      data = TransactionTokenUpdateRequestData.from_hash(hash['data']) if hash['data']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TransactionTokenUpdateRequest.new(email: email,
                                        metadata: metadata,
                                        data: data,
                                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} email: #{@email}, metadata: #{@metadata}, data: #{@data},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} email: #{@email.inspect}, metadata: #{@metadata.inspect}, data:"\
      " #{@data.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
