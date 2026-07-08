# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Customer-facing payment method summary data.
  class SubscriptionUserData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Type of the resource.
    # @return [String]
    attr_accessor :type

    # Cardholder name value.
    # @return [String]
    attr_accessor :cardholder_name

    # Customer email address.
    # @return [String]
    attr_accessor :email

    # Brand or network name.
    # @return [String]
    attr_accessor :brand

    # Gateway identifier.
    # @return [String]
    attr_accessor :gateway

    # Service provider identifier.
    # @return [String]
    attr_accessor :service_provider

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['cardholder_name'] = 'cardholder_name'
      @_hash['email'] = 'email'
      @_hash['brand'] = 'brand'
      @_hash['gateway'] = 'gateway'
      @_hash['service_provider'] = 'service_provider'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        type
        cardholder_name
        email
        brand
        gateway
        service_provider
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        cardholder_name
        email
        brand
        gateway
        service_provider
      ]
    end

    def initialize(type: SKIP, cardholder_name: SKIP, email: SKIP, brand: SKIP,
                   gateway: SKIP, service_provider: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @type = type unless type == SKIP
      @cardholder_name = cardholder_name unless cardholder_name == SKIP
      @email = email unless email == SKIP
      @brand = brand unless brand == SKIP
      @gateway = gateway unless gateway == SKIP
      @service_provider = service_provider unless service_provider == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('type') ? hash['type'] : SKIP
      cardholder_name =
        hash.key?('cardholder_name') ? hash['cardholder_name'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      brand = hash.key?('brand') ? hash['brand'] : SKIP
      gateway = hash.key?('gateway') ? hash['gateway'] : SKIP
      service_provider =
        hash.key?('service_provider') ? hash['service_provider'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionUserData.new(type: type,
                               cardholder_name: cardholder_name,
                               email: email,
                               brand: brand,
                               gateway: gateway,
                               service_provider: service_provider,
                               additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} type: #{@type}, cardholder_name: #{@cardholder_name}, email: #{@email},"\
      " brand: #{@brand}, gateway: #{@gateway}, service_provider: #{@service_provider},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} type: #{@type.inspect}, cardholder_name: #{@cardholder_name.inspect},"\
      " email: #{@email.inspect}, brand: #{@brand.inspect}, gateway: #{@gateway.inspect},"\
      " service_provider: #{@service_provider.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
