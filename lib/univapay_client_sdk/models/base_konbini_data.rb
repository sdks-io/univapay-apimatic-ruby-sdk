# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Base Konbini Data schema.
  class BaseKonbiniData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Customer name.
    # @return [String]
    attr_accessor :customer_name

    # Base Konbini Data Convenience Store schema.
    # @return [BaseKonbiniDataConvenienceStore]
    attr_accessor :convenience_store

    # ISO-8601 Duration (e.g., 'P7D'). Default is 30 days.
    # @return [String]
    attr_accessor :expiration_period

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_name'] = 'customer_name'
      @_hash['convenience_store'] = 'convenience_store'
      @_hash['expiration_period'] = 'expiration_period'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customer_name
        convenience_store
        expiration_period
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(customer_name: SKIP, convenience_store: SKIP,
                   expiration_period: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @customer_name = customer_name unless customer_name == SKIP
      @convenience_store = convenience_store unless convenience_store == SKIP
      @expiration_period = expiration_period unless expiration_period == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer_name = hash.key?('customer_name') ? hash['customer_name'] : SKIP
      convenience_store =
        hash.key?('convenience_store') ? hash['convenience_store'] : SKIP
      expiration_period =
        hash.key?('expiration_period') ? hash['expiration_period'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      BaseKonbiniData.new(customer_name: customer_name,
                          convenience_store: convenience_store,
                          expiration_period: expiration_period,
                          additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} customer_name: #{@customer_name}, convenience_store: #{@convenience_store},"\
      " expiration_period: #{@expiration_period}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} customer_name: #{@customer_name.inspect}, convenience_store:"\
      " #{@convenience_store.inspect}, expiration_period: #{@expiration_period.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
