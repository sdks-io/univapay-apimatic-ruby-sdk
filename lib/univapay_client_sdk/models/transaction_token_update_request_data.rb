# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Transaction Token Update Request Data schema.
  class TransactionTokenUpdateRequestData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Update if RECURRING_USAGE_REQUIRES_CVV error occurs.
    # @return [String]
    attr_accessor :cvv

    # Cardholder name.
    # @return [String]
    attr_accessor :cardholder

    # Card number.
    # @return [String]
    attr_accessor :card_number

    # Card expiration month.
    # @return [Integer]
    attr_accessor :exp_month

    # Card expiration year.
    # @return [Integer]
    attr_accessor :exp_year

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

    # Transaction Token Update Request Data Phone Number schema.
    # @return [TransactionTokenUpdateRequestDataPhoneNumber]
    attr_accessor :phone_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['cvv'] = 'cvv'
      @_hash['cardholder'] = 'cardholder'
      @_hash['card_number'] = 'card_number'
      @_hash['exp_month'] = 'exp_month'
      @_hash['exp_year'] = 'exp_year'
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
        cvv
        cardholder
        card_number
        exp_month
        exp_year
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
      []
    end

    def initialize(cvv: SKIP, cardholder: SKIP, card_number: SKIP,
                   exp_month: SKIP, exp_year: SKIP, line1: SKIP, line2: SKIP,
                   state: SKIP, city: SKIP, country: SKIP, zip: SKIP,
                   phone_number: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @cvv = cvv unless cvv == SKIP
      @cardholder = cardholder unless cardholder == SKIP
      @card_number = card_number unless card_number == SKIP
      @exp_month = exp_month unless exp_month == SKIP
      @exp_year = exp_year unless exp_year == SKIP
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
      cvv = hash.key?('cvv') ? hash['cvv'] : SKIP
      cardholder = hash.key?('cardholder') ? hash['cardholder'] : SKIP
      card_number = hash.key?('card_number') ? hash['card_number'] : SKIP
      exp_month = hash.key?('exp_month') ? hash['exp_month'] : SKIP
      exp_year = hash.key?('exp_year') ? hash['exp_year'] : SKIP
      line1 = hash.key?('line1') ? hash['line1'] : SKIP
      line2 = hash.key?('line2') ? hash['line2'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
      zip = hash.key?('zip') ? hash['zip'] : SKIP
      phone_number = TransactionTokenUpdateRequestDataPhoneNumber.from_hash(hash['phone_number']) if
        hash['phone_number']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TransactionTokenUpdateRequestData.new(cvv: cvv,
                                            cardholder: cardholder,
                                            card_number: card_number,
                                            exp_month: exp_month,
                                            exp_year: exp_year,
                                            line1: line1,
                                            line2: line2,
                                            state: state,
                                            city: city,
                                            country: country,
                                            zip: zip,
                                            phone_number: phone_number,
                                            additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} cvv: #{@cvv}, cardholder: #{@cardholder}, card_number: #{@card_number},"\
      " exp_month: #{@exp_month}, exp_year: #{@exp_year}, line1: #{@line1}, line2: #{@line2},"\
      " state: #{@state}, city: #{@city}, country: #{@country}, zip: #{@zip}, phone_number:"\
      " #{@phone_number}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} cvv: #{@cvv.inspect}, cardholder: #{@cardholder.inspect}, card_number:"\
      " #{@card_number.inspect}, exp_month: #{@exp_month.inspect}, exp_year: #{@exp_year.inspect},"\
      " line1: #{@line1.inspect}, line2: #{@line2.inspect}, state: #{@state.inspect}, city:"\
      " #{@city.inspect}, country: #{@country.inspect}, zip: #{@zip.inspect}, phone_number:"\
      " #{@phone_number.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
