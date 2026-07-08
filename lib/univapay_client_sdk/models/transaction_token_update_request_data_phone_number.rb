# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Transaction Token Update Request Data Phone Number schema.
  class TransactionTokenUpdateRequestDataPhoneNumber < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Telephone country code.
    # @return [String]
    attr_accessor :country_code

    # Local phone number.
    # @return [String]
    attr_accessor :local_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['country_code'] = 'country_code'
      @_hash['local_number'] = 'local_number'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        country_code
        local_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(country_code: SKIP, local_number: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @country_code = country_code unless country_code == SKIP
      @local_number = local_number unless local_number == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country_code = hash.key?('country_code') ? hash['country_code'] : SKIP
      local_number = hash.key?('local_number') ? hash['local_number'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TransactionTokenUpdateRequestDataPhoneNumber.new(country_code: country_code,
                                                       local_number: local_number,
                                                       additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} country_code: #{@country_code}, local_number: #{@local_number},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} country_code: #{@country_code.inspect}, local_number:"\
      " #{@local_number.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
