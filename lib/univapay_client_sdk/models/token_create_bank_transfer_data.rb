# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Create Bank Transfer Data schema.
  class TokenCreateBankTransferData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The bank brand identifier (e.g., 'aozora_bank').
    # @return [String]
    attr_accessor :brand

    # ISO 8601 duration format (e.g., 'PT168H').
    # @return [String]
    attr_accessor :expiration_period

    # Time shift applied to the expiration, typically pushing it to the end of
    # the day  in a specific timezone (e.g., '23:59:59+09:00').
    # @return [String]
    attr_accessor :expiration_time_shift

    # The name of the customer initiating the transfer.
    # @return [String]
    attr_accessor :name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand'] = 'brand'
      @_hash['expiration_period'] = 'expiration_period'
      @_hash['expiration_time_shift'] = 'expiration_time_shift'
      @_hash['name'] = 'name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        expiration_period
        expiration_time_shift
        name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(brand:, expiration_period: SKIP, expiration_time_shift: SKIP,
                   name: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @brand = brand
      @expiration_period = expiration_period unless expiration_period == SKIP
      @expiration_time_shift = expiration_time_shift unless expiration_time_shift == SKIP
      @name = name unless name == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      brand = hash.key?('brand') ? hash['brand'] : nil
      expiration_period =
        hash.key?('expiration_period') ? hash['expiration_period'] : SKIP
      expiration_time_shift =
        hash.key?('expiration_time_shift') ? hash['expiration_time_shift'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenCreateBankTransferData.new(brand: brand,
                                      expiration_period: expiration_period,
                                      expiration_time_shift: expiration_time_shift,
                                      name: name,
                                      additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenCreateBankTransferData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return APIHelper.valid_type?(value.brand,
                                     ->(val) { val.instance_of? String })
      end

      return false unless value.instance_of? Hash

      APIHelper.valid_type?(value['brand'],
                            ->(val) { val.instance_of? String })
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} brand: #{@brand}, expiration_period: #{@expiration_period},"\
      " expiration_time_shift: #{@expiration_time_shift}, name: #{@name}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} brand: #{@brand.inspect}, expiration_period: #{@expiration_period.inspect},"\
      " expiration_time_shift: #{@expiration_time_shift.inspect}, name: #{@name.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
