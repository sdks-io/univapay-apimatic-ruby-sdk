# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Response Card Data Billing schema.
  class TokenResponseCardDataBilling < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Primary street address line.
    # @return [String]
    attr_accessor :line1

    # Secondary street address line.
    # @return [String]
    attr_accessor :line2

    # State or prefecture.
    # @return [String]
    attr_accessor :state

    # City or locality.
    # @return [String]
    attr_accessor :city

    # Country code.
    # @return [String]
    attr_accessor :country

    # Postal code.
    # @return [String]
    attr_accessor :zip

    # Token Response Phone Number schema.
    # @return [TokenResponsePhoneNumber]
    attr_accessor :phone_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['line1'] = 'line1'
      @_hash['line2'] = 'line2'
      @_hash['state'] = 'state'
      @_hash['city'] = 'city'
      @_hash['country'] = 'country'
      @_hash['zip'] = 'zip'
      @_hash['phone_number'] = 'phone_number'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        line1
        line2
        state
        city
        country
        zip
        phone_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        line1
        line2
        state
        city
        country
        zip
      ]
    end

    def initialize(line1: SKIP, line2: SKIP, state: SKIP, city: SKIP,
                   country: SKIP, zip: SKIP, phone_number: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @line1 = line1 unless line1 == SKIP
      @line2 = line2 unless line2 == SKIP
      @state = state unless state == SKIP
      @city = city unless city == SKIP
      @country = country unless country == SKIP
      @zip = zip unless zip == SKIP
      @phone_number = phone_number unless phone_number == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      line1 = hash.key?('line1') ? hash['line1'] : SKIP
      line2 = hash.key?('line2') ? hash['line2'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
      zip = hash.key?('zip') ? hash['zip'] : SKIP
      phone_number = TokenResponsePhoneNumber.from_hash(hash['phone_number']) if
        hash['phone_number']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenResponseCardDataBilling.new(line1: line1,
                                       line2: line2,
                                       state: state,
                                       city: city,
                                       country: country,
                                       zip: zip,
                                       phone_number: phone_number,
                                       additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenResponseCardDataBilling | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} line1: #{@line1}, line2: #{@line2}, state: #{@state}, city: #{@city},"\
      " country: #{@country}, zip: #{@zip}, phone_number: #{@phone_number}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} line1: #{@line1.inspect}, line2: #{@line2.inspect}, state:"\
      " #{@state.inspect}, city: #{@city.inspect}, country: #{@country.inspect}, zip:"\
      " #{@zip.inspect}, phone_number: #{@phone_number.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
