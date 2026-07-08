# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Response Card Data Card schema.
  class TokenResponseCardDataCard < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Cardholder name.
    # @return [String]
    attr_accessor :cardholder

    # Card expiration month.
    # @return [Integer]
    attr_accessor :exp_month

    # Card expiration year.
    # @return [Integer]
    attr_accessor :exp_year

    # Card bin value.
    # @return [String]
    attr_accessor :card_bin

    # Last four value.
    # @return [String]
    attr_accessor :last_four

    # Brand or network name.
    # @return [String]
    attr_accessor :brand

    # Card type value.
    # @return [String]
    attr_accessor :card_type

    # Country code.
    # @return [String]
    attr_accessor :country

    # Category value.
    # @return [String]
    attr_accessor :category

    # Issuer value.
    # @return [String]
    attr_accessor :issuer

    # Sub brand value.
    # @return [String]
    attr_accessor :sub_brand

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['cardholder'] = 'cardholder'
      @_hash['exp_month'] = 'exp_month'
      @_hash['exp_year'] = 'exp_year'
      @_hash['card_bin'] = 'card_bin'
      @_hash['last_four'] = 'last_four'
      @_hash['brand'] = 'brand'
      @_hash['card_type'] = 'card_type'
      @_hash['country'] = 'country'
      @_hash['category'] = 'category'
      @_hash['issuer'] = 'issuer'
      @_hash['sub_brand'] = 'sub_brand'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        cardholder
        exp_month
        exp_year
        card_bin
        last_four
        brand
        card_type
        country
        category
        issuer
        sub_brand
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        category
        issuer
      ]
    end

    def initialize(cardholder: SKIP, exp_month: SKIP, exp_year: SKIP,
                   card_bin: SKIP, last_four: SKIP, brand: SKIP,
                   card_type: SKIP, country: SKIP, category: SKIP, issuer: SKIP,
                   sub_brand: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @cardholder = cardholder unless cardholder == SKIP
      @exp_month = exp_month unless exp_month == SKIP
      @exp_year = exp_year unless exp_year == SKIP
      @card_bin = card_bin unless card_bin == SKIP
      @last_four = last_four unless last_four == SKIP
      @brand = brand unless brand == SKIP
      @card_type = card_type unless card_type == SKIP
      @country = country unless country == SKIP
      @category = category unless category == SKIP
      @issuer = issuer unless issuer == SKIP
      @sub_brand = sub_brand unless sub_brand == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      cardholder = hash.key?('cardholder') ? hash['cardholder'] : SKIP
      exp_month = hash.key?('exp_month') ? hash['exp_month'] : SKIP
      exp_year = hash.key?('exp_year') ? hash['exp_year'] : SKIP
      card_bin = hash.key?('card_bin') ? hash['card_bin'] : SKIP
      last_four = hash.key?('last_four') ? hash['last_four'] : SKIP
      brand = hash.key?('brand') ? hash['brand'] : SKIP
      card_type = hash.key?('card_type') ? hash['card_type'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
      category = hash.key?('category') ? hash['category'] : SKIP
      issuer = hash.key?('issuer') ? hash['issuer'] : SKIP
      sub_brand = hash.key?('sub_brand') ? hash['sub_brand'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenResponseCardDataCard.new(cardholder: cardholder,
                                    exp_month: exp_month,
                                    exp_year: exp_year,
                                    card_bin: card_bin,
                                    last_four: last_four,
                                    brand: brand,
                                    card_type: card_type,
                                    country: country,
                                    category: category,
                                    issuer: issuer,
                                    sub_brand: sub_brand,
                                    additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenResponseCardDataCard | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} cardholder: #{@cardholder}, exp_month: #{@exp_month}, exp_year:"\
      " #{@exp_year}, card_bin: #{@card_bin}, last_four: #{@last_four}, brand: #{@brand},"\
      " card_type: #{@card_type}, country: #{@country}, category: #{@category}, issuer:"\
      " #{@issuer}, sub_brand: #{@sub_brand}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} cardholder: #{@cardholder.inspect}, exp_month: #{@exp_month.inspect},"\
      " exp_year: #{@exp_year.inspect}, card_bin: #{@card_bin.inspect}, last_four:"\
      " #{@last_four.inspect}, brand: #{@brand.inspect}, card_type: #{@card_type.inspect},"\
      " country: #{@country.inspect}, category: #{@category.inspect}, issuer: #{@issuer.inspect},"\
      " sub_brand: #{@sub_brand.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
