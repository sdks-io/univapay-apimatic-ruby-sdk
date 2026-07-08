# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Convenience-store payment settings.
  class MerchantWebhookConvenienceConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enables convenience-store payments.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # ISO-8601 duration before convenience payment expiry.
    # @return [String]
    attr_accessor :expiration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['expiration'] = 'expiration'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        expiration
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        enabled
        expiration
      ]
    end

    def initialize(enabled: SKIP, expiration: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @expiration = expiration unless expiration == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      expiration = hash.key?('expiration') ? hash['expiration'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookConvenienceConfiguration.new(enabled: enabled,
                                                  expiration: expiration,
                                                  additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, expiration: #{@expiration}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, expiration: #{@expiration.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
