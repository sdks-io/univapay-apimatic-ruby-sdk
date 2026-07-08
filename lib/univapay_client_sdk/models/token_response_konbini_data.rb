# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Response Konbini Data schema.
  class TokenResponseKonbiniData < BaseModel
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

    # Time shift applied to the expiration, typically pushing it to the end of
    # the day in a specific timezone (e.g., '23:59:59.999999+09:00').
    # @return [String]
    attr_accessor :expiration_time_shift

    # Token Response Phone Number schema.
    # @return [TokenResponsePhoneNumber]
    attr_accessor :phone_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_name'] = 'customer_name'
      @_hash['convenience_store'] = 'convenience_store'
      @_hash['expiration_period'] = 'expiration_period'
      @_hash['expiration_time_shift'] = 'expiration_time_shift'
      @_hash['phone_number'] = 'phone_number'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customer_name
        convenience_store
        expiration_period
        expiration_time_shift
        phone_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        expiration_time_shift
      ]
    end

    def initialize(customer_name: SKIP, convenience_store: SKIP,
                   expiration_period: SKIP, expiration_time_shift: SKIP,
                   phone_number: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @customer_name = customer_name unless customer_name == SKIP
      @convenience_store = convenience_store unless convenience_store == SKIP
      @expiration_period = expiration_period unless expiration_period == SKIP
      @expiration_time_shift = expiration_time_shift unless expiration_time_shift == SKIP
      @phone_number = phone_number unless phone_number == SKIP
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
      expiration_time_shift =
        hash.key?('expiration_time_shift') ? hash['expiration_time_shift'] : SKIP
      phone_number = TokenResponsePhoneNumber.from_hash(hash['phone_number']) if
        hash['phone_number']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenResponseKonbiniData.new(customer_name: customer_name,
                                   convenience_store: convenience_store,
                                   expiration_period: expiration_period,
                                   expiration_time_shift: expiration_time_shift,
                                   phone_number: phone_number,
                                   additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenResponseKonbiniData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} customer_name: #{@customer_name}, convenience_store: #{@convenience_store},"\
      " expiration_period: #{@expiration_period}, expiration_time_shift:"\
      " #{@expiration_time_shift}, phone_number: #{@phone_number}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} customer_name: #{@customer_name.inspect}, convenience_store:"\
      " #{@convenience_store.inspect}, expiration_period: #{@expiration_period.inspect},"\
      " expiration_time_shift: #{@expiration_time_shift.inspect}, phone_number:"\
      " #{@phone_number.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
