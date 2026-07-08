# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Create Konbini Data schema.
  class TokenCreateKonbiniData < BaseModel
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

    # Token Create Phone Number schema.
    # @return [TokenCreatePhoneNumber]
    attr_accessor :phone_number

    # Expiration time shift value.
    # @return [String]
    attr_accessor :expiration_time_shift

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customer_name'] = 'customer_name'
      @_hash['convenience_store'] = 'convenience_store'
      @_hash['expiration_period'] = 'expiration_period'
      @_hash['phone_number'] = 'phone_number'
      @_hash['expiration_time_shift'] = 'expiration_time_shift'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        expiration_period
        expiration_time_shift
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(customer_name:, convenience_store:, phone_number:,
                   expiration_period: SKIP, expiration_time_shift: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @customer_name = customer_name
      @convenience_store = convenience_store
      @expiration_period = expiration_period unless expiration_period == SKIP
      @phone_number = phone_number
      @expiration_time_shift = expiration_time_shift unless expiration_time_shift == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customer_name = hash.key?('customer_name') ? hash['customer_name'] : nil
      convenience_store =
        hash.key?('convenience_store') ? hash['convenience_store'] : nil
      phone_number = TokenCreatePhoneNumber.from_hash(hash['phone_number']) if
        hash['phone_number']
      expiration_period =
        hash.key?('expiration_period') ? hash['expiration_period'] : SKIP
      expiration_time_shift =
        hash.key?('expiration_time_shift') ? hash['expiration_time_shift'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenCreateKonbiniData.new(customer_name: customer_name,
                                 convenience_store: convenience_store,
                                 phone_number: phone_number,
                                 expiration_period: expiration_period,
                                 expiration_time_shift: expiration_time_shift,
                                 additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenCreateKonbiniData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.customer_name,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.convenience_store,
                                  ->(val) { BaseKonbiniDataConvenienceStore.validate(val) }) and
            APIHelper.valid_type?(value.phone_number,
                                  ->(val) { TokenCreatePhoneNumber.validate(val) },
                                  is_model_hash: true)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['customer_name'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['convenience_store'],
                                ->(val) { BaseKonbiniDataConvenienceStore.validate(val) }) and
          APIHelper.valid_type?(value['phone_number'],
                                ->(val) { TokenCreatePhoneNumber.validate(val) },
                                is_model_hash: true)
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} customer_name: #{@customer_name}, convenience_store: #{@convenience_store},"\
      " expiration_period: #{@expiration_period}, phone_number: #{@phone_number},"\
      " expiration_time_shift: #{@expiration_time_shift}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} customer_name: #{@customer_name.inspect}, convenience_store:"\
      " #{@convenience_store.inspect}, expiration_period: #{@expiration_period.inspect},"\
      " phone_number: #{@phone_number.inspect}, expiration_time_shift:"\
      " #{@expiration_time_shift.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
