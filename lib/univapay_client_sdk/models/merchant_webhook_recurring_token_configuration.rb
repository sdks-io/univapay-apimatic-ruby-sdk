# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Recurring token configuration inherited by the merchant.
  class MerchantWebhookRecurringTokenConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Merchant recurring-token privilege.
    # @return [String]
    attr_accessor :recurring_type

    # ISO-8601 duration to wait before first recurring charge.
    # @return [String]
    attr_accessor :charge_wait_period

    # CVV confirmation rules for recurring token charges.
    # @return [MerchantWebhookRecurringCvvConfirmationConfig]
    attr_accessor :card_charge_cvv_confirmation

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['recurring_type'] = 'recurring_type'
      @_hash['charge_wait_period'] = 'charge_wait_period'
      @_hash['card_charge_cvv_confirmation'] = 'card_charge_cvv_confirmation'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        recurring_type
        charge_wait_period
        card_charge_cvv_confirmation
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        recurring_type
        charge_wait_period
      ]
    end

    def initialize(recurring_type: SKIP, charge_wait_period: SKIP,
                   card_charge_cvv_confirmation: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @recurring_type = recurring_type unless recurring_type == SKIP
      @charge_wait_period = charge_wait_period unless charge_wait_period == SKIP
      unless card_charge_cvv_confirmation == SKIP
        @card_charge_cvv_confirmation =
          card_charge_cvv_confirmation
      end
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      recurring_type =
        hash.key?('recurring_type') ? hash['recurring_type'] : SKIP
      charge_wait_period =
        hash.key?('charge_wait_period') ? hash['charge_wait_period'] : SKIP
      if hash['card_charge_cvv_confirmation']
        card_charge_cvv_confirmation = MerchantWebhookRecurringCvvConfirmationConfig.from_hash(hash['card_charge_cvv_confirmation'])
      end

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookRecurringTokenConfiguration.new(recurring_type: recurring_type,
                                                     charge_wait_period: charge_wait_period,
                                                     card_charge_cvv_confirmation: card_charge_cvv_confirmation,
                                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} recurring_type: #{@recurring_type}, charge_wait_period:"\
      " #{@charge_wait_period}, card_charge_cvv_confirmation: #{@card_charge_cvv_confirmation},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} recurring_type: #{@recurring_type.inspect}, charge_wait_period:"\
      " #{@charge_wait_period.inspect}, card_charge_cvv_confirmation:"\
      " #{@card_charge_cvv_confirmation.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
