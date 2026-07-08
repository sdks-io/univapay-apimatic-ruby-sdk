# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Transaction Token List Item User Data schema.
  class TransactionTokenListItemUserData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Cardholder name value.
    # @return [String]
    attr_accessor :cardholder_name

    # Customer email address.
    # @return [String]
    attr_accessor :email

    # Brand or network name.
    # @return [String]
    attr_accessor :brand

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['cardholder_name'] = 'cardholder_name'
      @_hash['email'] = 'email'
      @_hash['brand'] = 'brand'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        cardholder_name
        email
        brand
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(cardholder_name: SKIP, email: SKIP, brand: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @cardholder_name = cardholder_name unless cardholder_name == SKIP
      @email = email unless email == SKIP
      @brand = brand unless brand == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      cardholder_name =
        hash.key?('cardholder_name') ? hash['cardholder_name'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      brand = hash.key?('brand') ? hash['brand'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TransactionTokenListItemUserData.new(cardholder_name: cardholder_name,
                                           email: email,
                                           brand: brand,
                                           additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} cardholder_name: #{@cardholder_name}, email: #{@email}, brand: #{@brand},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} cardholder_name: #{@cardholder_name.inspect}, email: #{@email.inspect},"\
      " brand: #{@brand.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
