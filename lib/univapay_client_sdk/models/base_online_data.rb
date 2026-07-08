# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Base Online Data schema.
  class BaseOnlineData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Base Online Data Brand schema.
    # @return [BaseOnlineDataBrand]
    attr_accessor :brand

    # Base Online Data Call Method schema.
    # @return [BaseOnlineDataCallMethod]
    attr_accessor :call_method

    # Base Online Data Os Type schema.
    # @return [BaseOnlineDataOsType]
    attr_accessor :os_type

    # Consumer specific identifier required by some gateways for fraud
    # prevention.
    # @return [String]
    attr_accessor :user_identifier

    # The source of the user identifier
    # @return [BaseOnlineDataUserIdentifierSource]
    attr_accessor :user_identifier_source

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand'] = 'brand'
      @_hash['call_method'] = 'call_method'
      @_hash['os_type'] = 'os_type'
      @_hash['user_identifier'] = 'user_identifier'
      @_hash['user_identifier_source'] = 'user_identifier_source'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        brand
        call_method
        os_type
        user_identifier
        user_identifier_source
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        os_type
        user_identifier
        user_identifier_source
      ]
    end

    def initialize(brand: SKIP, call_method: SKIP, os_type: SKIP,
                   user_identifier: SKIP, user_identifier_source: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @brand = brand unless brand == SKIP
      @call_method = call_method unless call_method == SKIP
      @os_type = os_type unless os_type == SKIP
      @user_identifier = user_identifier unless user_identifier == SKIP
      @user_identifier_source = user_identifier_source unless user_identifier_source == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      brand = hash.key?('brand') ? hash['brand'] : SKIP
      call_method = hash.key?('call_method') ? hash['call_method'] : SKIP
      os_type = hash.key?('os_type') ? hash['os_type'] : SKIP
      user_identifier =
        hash.key?('user_identifier') ? hash['user_identifier'] : SKIP
      user_identifier_source =
        hash.key?('user_identifier_source') ? hash['user_identifier_source'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      BaseOnlineData.new(brand: brand,
                         call_method: call_method,
                         os_type: os_type,
                         user_identifier: user_identifier,
                         user_identifier_source: user_identifier_source,
                         additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} brand: #{@brand}, call_method: #{@call_method}, os_type: #{@os_type},"\
      " user_identifier: #{@user_identifier}, user_identifier_source: #{@user_identifier_source},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} brand: #{@brand.inspect}, call_method: #{@call_method.inspect}, os_type:"\
      " #{@os_type.inspect}, user_identifier: #{@user_identifier.inspect}, user_identifier_source:"\
      " #{@user_identifier_source.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
