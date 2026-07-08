# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # A dictionary containing necessary key-value pairs for sending the request.
  class IssuerTokenPayload < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Generic payload key used by most payment providers.
    # @return [String]
    attr_accessor :request_data

    # d-barai payment service code.
    # @return [String]
    attr_accessor :s_spcd

    # d-barai coupon token.
    # @return [String]
    attr_accessor :s_cptok

    # d-barai terminal key.
    # @return [String]
    attr_accessor :s_terkn

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['request_data'] = 'request_data'
      @_hash['s_spcd'] = 'sSpcd'
      @_hash['s_cptok'] = 'sCptok'
      @_hash['s_terkn'] = 'sTerkn'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        request_data
        s_spcd
        s_cptok
        s_terkn
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(request_data: SKIP, s_spcd: SKIP, s_cptok: SKIP,
                   s_terkn: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @request_data = request_data unless request_data == SKIP
      @s_spcd = s_spcd unless s_spcd == SKIP
      @s_cptok = s_cptok unless s_cptok == SKIP
      @s_terkn = s_terkn unless s_terkn == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      request_data = hash.key?('request_data') ? hash['request_data'] : SKIP
      s_spcd = hash.key?('sSpcd') ? hash['sSpcd'] : SKIP
      s_cptok = hash.key?('sCptok') ? hash['sCptok'] : SKIP
      s_terkn = hash.key?('sTerkn') ? hash['sTerkn'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      IssuerTokenPayload.new(request_data: request_data,
                             s_spcd: s_spcd,
                             s_cptok: s_cptok,
                             s_terkn: s_terkn,
                             additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} request_data: #{@request_data}, s_spcd: #{@s_spcd}, s_cptok: #{@s_cptok},"\
      " s_terkn: #{@s_terkn}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} request_data: #{@request_data.inspect}, s_spcd: #{@s_spcd.inspect},"\
      " s_cptok: #{@s_cptok.inspect}, s_terkn: #{@s_terkn.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
