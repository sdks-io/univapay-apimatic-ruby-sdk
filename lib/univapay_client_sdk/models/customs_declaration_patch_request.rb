# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request body for updating a customs declaration. Backend patch handling
  # keeps the original `customs`, `certificate_id`, and `certificate_name`
  # values and only accepts a new `merchant_customs_no`.
  class CustomsDeclarationPatchRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Updated merchant customs registration number.
    # @return [String]
    attr_accessor :merchant_customs_no

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['merchant_customs_no'] = 'merchant_customs_no'
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

    def initialize(merchant_customs_no:, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @merchant_customs_no = merchant_customs_no
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      merchant_customs_no =
        hash.key?('merchant_customs_no') ? hash['merchant_customs_no'] : nil

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CustomsDeclarationPatchRequest.new(merchant_customs_no: merchant_customs_no,
                                         additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} merchant_customs_no: #{@merchant_customs_no}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} merchant_customs_no: #{@merchant_customs_no.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
