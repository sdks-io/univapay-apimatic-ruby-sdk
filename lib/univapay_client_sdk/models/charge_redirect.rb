# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Charge Redirect schema.
  class ChargeRedirect < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Endpoint value.
    # @return [String]
    attr_accessor :endpoint

    # Redirect identifier.
    # @return [UUID | String]
    attr_accessor :redirect_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['endpoint'] = 'endpoint'
      @_hash['redirect_id'] = 'redirect_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        endpoint
        redirect_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(endpoint: SKIP, redirect_id: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @endpoint = endpoint unless endpoint == SKIP
      @redirect_id = redirect_id unless redirect_id == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      endpoint = hash.key?('endpoint') ? hash['endpoint'] : SKIP
      redirect_id = hash.key?('redirect_id') ? hash['redirect_id'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      ChargeRedirect.new(endpoint: endpoint,
                         redirect_id: redirect_id,
                         additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [ChargeRedirect | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} endpoint: #{@endpoint}, redirect_id: #{@redirect_id},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} endpoint: #{@endpoint.inspect}, redirect_id: #{@redirect_id.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
