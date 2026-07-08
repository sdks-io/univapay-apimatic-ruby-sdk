# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Installment plan configuration.
  class MerchantWebhookInstallmentPlanConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enables installment plan features for eligible payments.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # Card-processor capabilities available for installment payments.
    # @return [CardProcessorInstallmentConfig]
    attr_accessor :card_processor

    # Payment types that can use installment plans.
    # @return [Array[String]]
    attr_accessor :supported_payment_types

    # Monetary amount object serialized by backend config models.
    # @return [MerchantWebhookMoneyAmount]
    attr_accessor :min_charge_amount

    # Maximum payout delay allowed for installment settlements.
    # @return [String]
    attr_accessor :max_payout_period

    # Restricts installment use to processor-backed flows.
    # @return [TrueClass | FalseClass]
    attr_accessor :only_with_processor

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['card_processor'] = 'card_processor'
      @_hash['supported_payment_types'] = 'supported_payment_types'
      @_hash['min_charge_amount'] = 'min_charge_amount'
      @_hash['max_payout_period'] = 'max_payout_period'
      @_hash['only_with_processor'] = 'only_with_processor'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        card_processor
        supported_payment_types
        min_charge_amount
        max_payout_period
        only_with_processor
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        enabled
        supported_payment_types
        max_payout_period
        only_with_processor
      ]
    end

    def initialize(enabled: SKIP, card_processor: SKIP,
                   supported_payment_types: SKIP, min_charge_amount: SKIP,
                   max_payout_period: SKIP, only_with_processor: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @card_processor = card_processor unless card_processor == SKIP
      @supported_payment_types = supported_payment_types unless supported_payment_types == SKIP
      @min_charge_amount = min_charge_amount unless min_charge_amount == SKIP
      @max_payout_period = max_payout_period unless max_payout_period == SKIP
      @only_with_processor = only_with_processor unless only_with_processor == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      card_processor = CardProcessorInstallmentConfig.from_hash(hash['card_processor']) if
        hash['card_processor']
      supported_payment_types =
        hash.key?('supported_payment_types') ? hash['supported_payment_types'] : SKIP
      min_charge_amount = MerchantWebhookMoneyAmount.from_hash(hash['min_charge_amount']) if
        hash['min_charge_amount']
      max_payout_period =
        hash.key?('max_payout_period') ? hash['max_payout_period'] : SKIP
      only_with_processor =
        hash.key?('only_with_processor') ? hash['only_with_processor'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookInstallmentPlanConfiguration.new(enabled: enabled,
                                                      card_processor: card_processor,
                                                      supported_payment_types: supported_payment_types,
                                                      min_charge_amount: min_charge_amount,
                                                      max_payout_period: max_payout_period,
                                                      only_with_processor: only_with_processor,
                                                      additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, card_processor: #{@card_processor},"\
      " supported_payment_types: #{@supported_payment_types}, min_charge_amount:"\
      " #{@min_charge_amount}, max_payout_period: #{@max_payout_period}, only_with_processor:"\
      " #{@only_with_processor}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, card_processor: #{@card_processor.inspect},"\
      " supported_payment_types: #{@supported_payment_types.inspect}, min_charge_amount:"\
      " #{@min_charge_amount.inspect}, max_payout_period: #{@max_payout_period.inspect},"\
      " only_with_processor: #{@only_with_processor.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
