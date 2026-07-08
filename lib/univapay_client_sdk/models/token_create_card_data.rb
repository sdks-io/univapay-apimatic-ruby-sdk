# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Create Card Data schema.
  class TokenCreateCardData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Cardholder name.
    # @return [String]
    attr_accessor :cardholder

    # Card number.
    # @return [String]
    attr_accessor :card_number

    # Card expiration month.
    # @return [String]
    attr_accessor :exp_month

    # Card expiration year.
    # @return [String]
    attr_accessor :exp_year

    # Card security code.
    # @return [String]
    attr_accessor :cvv

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

    # Token Create Phone Number schema.
    # @return [TokenCreatePhoneNumber]
    attr_accessor :phone_number

    # Token Create Card Data Cvv Authorize schema.
    # @return [TokenCreateCardDataCvvAuthorize]
    attr_accessor :cvv_authorize

    # Token Create Card Data Three Ds schema.
    # @return [TokenCreateCardDataThreeDs]
    attr_accessor :three_ds

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['cardholder'] = 'cardholder'
      @_hash['card_number'] = 'card_number'
      @_hash['exp_month'] = 'exp_month'
      @_hash['exp_year'] = 'exp_year'
      @_hash['cvv'] = 'cvv'
      @_hash['line1'] = 'line1'
      @_hash['line2'] = 'line2'
      @_hash['state'] = 'state'
      @_hash['city'] = 'city'
      @_hash['country'] = 'country'
      @_hash['zip'] = 'zip'
      @_hash['phone_number'] = 'phone_number'
      @_hash['cvv_authorize'] = 'cvv_authorize'
      @_hash['three_ds'] = 'three_ds'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        cardholder
        cvv
        line1
        line2
        state
        city
        country
        zip
        phone_number
        cvv_authorize
        three_ds
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        cvv
      ]
    end

    def initialize(card_number:, exp_month:, exp_year:, cardholder: SKIP,
                   cvv: SKIP, line1: SKIP, line2: SKIP, state: SKIP, city: SKIP,
                   country: SKIP, zip: SKIP, phone_number: SKIP,
                   cvv_authorize: SKIP, three_ds: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @cardholder = cardholder unless cardholder == SKIP
      @card_number = card_number
      @exp_month = exp_month
      @exp_year = exp_year
      @cvv = cvv unless cvv == SKIP
      @line1 = line1 unless line1 == SKIP
      @line2 = line2 unless line2 == SKIP
      @state = state unless state == SKIP
      @city = city unless city == SKIP
      @country = country unless country == SKIP
      @zip = zip unless zip == SKIP
      @phone_number = phone_number unless phone_number == SKIP
      @cvv_authorize = cvv_authorize unless cvv_authorize == SKIP
      @three_ds = three_ds unless three_ds == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_number = hash.key?('card_number') ? hash['card_number'] : nil
      exp_month = hash.key?('exp_month') ? hash['exp_month'] : nil
      exp_year = hash.key?('exp_year') ? hash['exp_year'] : nil
      cardholder = hash.key?('cardholder') ? hash['cardholder'] : SKIP
      cvv = hash.key?('cvv') ? hash['cvv'] : SKIP
      line1 = hash.key?('line1') ? hash['line1'] : SKIP
      line2 = hash.key?('line2') ? hash['line2'] : SKIP
      state = hash.key?('state') ? hash['state'] : SKIP
      city = hash.key?('city') ? hash['city'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
      zip = hash.key?('zip') ? hash['zip'] : SKIP
      phone_number = TokenCreatePhoneNumber.from_hash(hash['phone_number']) if
        hash['phone_number']
      cvv_authorize = TokenCreateCardDataCvvAuthorize.from_hash(hash['cvv_authorize']) if
        hash['cvv_authorize']
      three_ds = TokenCreateCardDataThreeDs.from_hash(hash['three_ds']) if hash['three_ds']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenCreateCardData.new(card_number: card_number,
                              exp_month: exp_month,
                              exp_year: exp_year,
                              cardholder: cardholder,
                              cvv: cvv,
                              line1: line1,
                              line2: line2,
                              state: state,
                              city: city,
                              country: country,
                              zip: zip,
                              phone_number: phone_number,
                              cvv_authorize: cvv_authorize,
                              three_ds: three_ds,
                              additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenCreateCardData | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.card_number,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.exp_month,
                                  ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.exp_year,
                                  ->(val) { val.instance_of? String })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['card_number'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['exp_month'],
                                ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['exp_year'],
                                ->(val) { val.instance_of? String })
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} cardholder: #{@cardholder}, card_number: #{@card_number}, exp_month:"\
      " #{@exp_month}, exp_year: #{@exp_year}, cvv: #{@cvv}, line1: #{@line1}, line2: #{@line2},"\
      " state: #{@state}, city: #{@city}, country: #{@country}, zip: #{@zip}, phone_number:"\
      " #{@phone_number}, cvv_authorize: #{@cvv_authorize}, three_ds: #{@three_ds},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} cardholder: #{@cardholder.inspect}, card_number: #{@card_number.inspect},"\
      " exp_month: #{@exp_month.inspect}, exp_year: #{@exp_year.inspect}, cvv: #{@cvv.inspect},"\
      " line1: #{@line1.inspect}, line2: #{@line2.inspect}, state: #{@state.inspect}, city:"\
      " #{@city.inspect}, country: #{@country.inspect}, zip: #{@zip.inspect}, phone_number:"\
      " #{@phone_number.inspect}, cvv_authorize: #{@cvv_authorize.inspect}, three_ds:"\
      " #{@three_ds.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
