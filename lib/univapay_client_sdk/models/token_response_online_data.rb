# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Response Online Data schema.
  class TokenResponseOnlineData < BaseModel
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

    # Token provided by the issuer (if applicable).
    # @return [String]
    attr_accessor :issuer_token

    # Additional payload from the issuer.
    # @return [String]
    attr_accessor :issuer_token_payload

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand'] = 'brand'
      @_hash['call_method'] = 'call_method'
      @_hash['os_type'] = 'os_type'
      @_hash['user_identifier'] = 'user_identifier'
      @_hash['user_identifier_source'] = 'user_identifier_source'
      @_hash['issuer_token'] = 'issuer_token'
      @_hash['issuer_token_payload'] = 'issuer_token_payload'
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
        issuer_token
        issuer_token_payload
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        os_type
        user_identifier
        user_identifier_source
        issuer_token
        issuer_token_payload
      ]
    end

    def initialize(brand: SKIP, call_method: SKIP, os_type: SKIP,
                   user_identifier: SKIP, user_identifier_source: SKIP,
                   issuer_token: SKIP, issuer_token_payload: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @brand = brand unless brand == SKIP
      @call_method = call_method unless call_method == SKIP
      @os_type = os_type unless os_type == SKIP
      @user_identifier = user_identifier unless user_identifier == SKIP
      @user_identifier_source = user_identifier_source unless user_identifier_source == SKIP
      @issuer_token = issuer_token unless issuer_token == SKIP
      @issuer_token_payload = issuer_token_payload unless issuer_token_payload == SKIP
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
      issuer_token = hash.key?('issuer_token') ? hash['issuer_token'] : SKIP
      issuer_token_payload =
        hash.key?('issuer_token_payload') ? hash['issuer_token_payload'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenResponseOnlineData.new(brand: brand,
                                  call_method: call_method,
                                  os_type: os_type,
                                  user_identifier: user_identifier,
                                  user_identifier_source: user_identifier_source,
                                  issuer_token: issuer_token,
                                  issuer_token_payload: issuer_token_payload,
                                  additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenResponseOnlineData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} brand: #{@brand}, call_method: #{@call_method}, os_type: #{@os_type},"\
      " user_identifier: #{@user_identifier}, user_identifier_source: #{@user_identifier_source},"\
      " issuer_token: #{@issuer_token}, issuer_token_payload: #{@issuer_token_payload},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} brand: #{@brand.inspect}, call_method: #{@call_method.inspect}, os_type:"\
      " #{@os_type.inspect}, user_identifier: #{@user_identifier.inspect}, user_identifier_source:"\
      " #{@user_identifier_source.inspect}, issuer_token: #{@issuer_token.inspect},"\
      " issuer_token_payload: #{@issuer_token_payload.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
