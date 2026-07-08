# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Per-card-brand percent fee overrides.
  class MerchantWebhookCardBrandPercentFees < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Percent fee override applied to Visa transactions.
    # @return [Float]
    attr_accessor :visa

    # Percent fee override applied to American Express transactions.
    # @return [Float]
    attr_accessor :american_express

    # Percent fee override applied to Mastercard transactions.
    # @return [Float]
    attr_accessor :mastercard

    # Percent fee override applied to Maestro transactions.
    # @return [Float]
    attr_accessor :maestro

    # Percent fee override applied to Discover transactions.
    # @return [Float]
    attr_accessor :discover

    # Percent fee override applied to JCB transactions.
    # @return [Float]
    attr_accessor :jcb

    # Percent fee override applied to Diners Club transactions.
    # @return [Float]
    attr_accessor :diners_club

    # Percent fee override applied to UnionPay transactions.
    # @return [Float]
    attr_accessor :union_pay

    # Percent fee override applied to private-label card transactions.
    # @return [Float]
    attr_accessor :private_label

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['visa'] = 'visa'
      @_hash['american_express'] = 'american_express'
      @_hash['mastercard'] = 'mastercard'
      @_hash['maestro'] = 'maestro'
      @_hash['discover'] = 'discover'
      @_hash['jcb'] = 'jcb'
      @_hash['diners_club'] = 'diners_club'
      @_hash['union_pay'] = 'union_pay'
      @_hash['private_label'] = 'private_label'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        visa
        american_express
        mastercard
        maestro
        discover
        jcb
        diners_club
        union_pay
        private_label
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        visa
        american_express
        mastercard
        maestro
        discover
        jcb
        diners_club
        union_pay
        private_label
      ]
    end

    def initialize(visa: SKIP, american_express: SKIP, mastercard: SKIP,
                   maestro: SKIP, discover: SKIP, jcb: SKIP, diners_club: SKIP,
                   union_pay: SKIP, private_label: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @visa = visa unless visa == SKIP
      @american_express = american_express unless american_express == SKIP
      @mastercard = mastercard unless mastercard == SKIP
      @maestro = maestro unless maestro == SKIP
      @discover = discover unless discover == SKIP
      @jcb = jcb unless jcb == SKIP
      @diners_club = diners_club unless diners_club == SKIP
      @union_pay = union_pay unless union_pay == SKIP
      @private_label = private_label unless private_label == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      visa = hash.key?('visa') ? hash['visa'] : SKIP
      american_express =
        hash.key?('american_express') ? hash['american_express'] : SKIP
      mastercard = hash.key?('mastercard') ? hash['mastercard'] : SKIP
      maestro = hash.key?('maestro') ? hash['maestro'] : SKIP
      discover = hash.key?('discover') ? hash['discover'] : SKIP
      jcb = hash.key?('jcb') ? hash['jcb'] : SKIP
      diners_club = hash.key?('diners_club') ? hash['diners_club'] : SKIP
      union_pay = hash.key?('union_pay') ? hash['union_pay'] : SKIP
      private_label = hash.key?('private_label') ? hash['private_label'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookCardBrandPercentFees.new(visa: visa,
                                              american_express: american_express,
                                              mastercard: mastercard,
                                              maestro: maestro,
                                              discover: discover,
                                              jcb: jcb,
                                              diners_club: diners_club,
                                              union_pay: union_pay,
                                              private_label: private_label,
                                              additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} visa: #{@visa}, american_express: #{@american_express}, mastercard:"\
      " #{@mastercard}, maestro: #{@maestro}, discover: #{@discover}, jcb: #{@jcb}, diners_club:"\
      " #{@diners_club}, union_pay: #{@union_pay}, private_label: #{@private_label},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} visa: #{@visa.inspect}, american_express: #{@american_express.inspect},"\
      " mastercard: #{@mastercard.inspect}, maestro: #{@maestro.inspect}, discover:"\
      " #{@discover.inspect}, jcb: #{@jcb.inspect}, diners_club: #{@diners_club.inspect},"\
      " union_pay: #{@union_pay.inspect}, private_label: #{@private_label.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
