# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Create Phone Number schema.
  class TokenCreatePhoneNumber < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Country code as string (e.g., '1' or '81').
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
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(country_code:, local_number:, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @country_code = country_code
      @local_number = local_number
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      country_code = hash.key?('country_code') ? hash['country_code'] : nil
      local_number = hash.key?('local_number') ? hash['local_number'] : nil

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenCreatePhoneNumber.new(country_code: country_code,
                                 local_number: local_number,
                                 additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenCreatePhoneNumber | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.country_code,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.local_number,
                                  ->(val) { val.instance_of? String })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['country_code'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['local_number'],
                                ->(val) { val.instance_of? String })
      )
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
