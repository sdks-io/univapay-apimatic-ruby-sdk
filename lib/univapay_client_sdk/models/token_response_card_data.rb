# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Response Card Data schema.
  class TokenResponseCardData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Token Response Card Data Card schema.
    # @return [TokenResponseCardDataCard]
    attr_accessor :card

    # Token Response Card Data Billing schema.
    # @return [TokenResponseCardDataBilling]
    attr_accessor :billing

    # Token Response Card Data Cvv Authorize schema.
    # @return [TokenResponseCardDataCvvAuthorize]
    attr_accessor :cvv_authorize

    # Token Response Card Data Cvv Authorize Check schema.
    # @return [TokenResponseCardDataCvvAuthorizeCheck]
    attr_accessor :cvv_authorize_check

    # Token Response Card Data Three Ds schema.
    # @return [TokenResponseCardDataThreeDs]
    attr_accessor :three_ds

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card'] = 'card'
      @_hash['billing'] = 'billing'
      @_hash['cvv_authorize'] = 'cvv_authorize'
      @_hash['cvv_authorize_check'] = 'cvv_authorize_check'
      @_hash['three_ds'] = 'three_ds'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card
        billing
        cvv_authorize
        cvv_authorize_check
        three_ds
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(card: SKIP, billing: SKIP, cvv_authorize: SKIP,
                   cvv_authorize_check: SKIP, three_ds: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @card = card unless card == SKIP
      @billing = billing unless billing == SKIP
      @cvv_authorize = cvv_authorize unless cvv_authorize == SKIP
      @cvv_authorize_check = cvv_authorize_check unless cvv_authorize_check == SKIP
      @three_ds = three_ds unless three_ds == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card = TokenResponseCardDataCard.from_hash(hash['card']) if hash['card']
      billing = TokenResponseCardDataBilling.from_hash(hash['billing']) if hash['billing']
      cvv_authorize = TokenResponseCardDataCvvAuthorize.from_hash(hash['cvv_authorize']) if
        hash['cvv_authorize']
      if hash['cvv_authorize_check']
        cvv_authorize_check = TokenResponseCardDataCvvAuthorizeCheck.from_hash(hash['cvv_authorize_check'])
      end
      three_ds = TokenResponseCardDataThreeDs.from_hash(hash['three_ds']) if hash['three_ds']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenResponseCardData.new(card: card,
                                billing: billing,
                                cvv_authorize: cvv_authorize,
                                cvv_authorize_check: cvv_authorize_check,
                                three_ds: three_ds,
                                additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenResponseCardData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card: #{@card}, billing: #{@billing}, cvv_authorize: #{@cvv_authorize},"\
      " cvv_authorize_check: #{@cvv_authorize_check}, three_ds: #{@three_ds},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card: #{@card.inspect}, billing: #{@billing.inspect}, cvv_authorize:"\
      " #{@cvv_authorize.inspect}, cvv_authorize_check: #{@cvv_authorize_check.inspect}, three_ds:"\
      " #{@three_ds.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
