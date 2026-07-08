# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Charge Create Request Client Metadata schema.
  class ChargeCreateRequestClientMetadata < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Consumer's IPv4 address.
    # @return [String]
    attr_accessor :ip_address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['ip_address'] = 'ip_address'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        ip_address
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(ip_address: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @ip_address = ip_address unless ip_address == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      ip_address = hash.key?('ip_address') ? hash['ip_address'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      ChargeCreateRequestClientMetadata.new(ip_address: ip_address,
                                            additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} ip_address: #{@ip_address}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} ip_address: #{@ip_address.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
