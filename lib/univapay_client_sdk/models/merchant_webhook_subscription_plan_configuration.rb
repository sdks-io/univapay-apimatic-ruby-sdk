# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Subscription plan configuration.
  class MerchantWebhookSubscriptionPlanConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enables limited-cycle subscription plans.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # Allows plans limited by a fixed number of cycles.
    # @return [TrueClass | FalseClass]
    attr_accessor :fixed_cycle

    # Allows plans limited by a total target amount.
    # @return [TrueClass | FalseClass]
    attr_accessor :fixed_cycle_amount

    # Payment types that can use subscription plans.
    # @return [Array[String]]
    attr_accessor :supported_payment_types

    # Monetary amount object serialized by backend config models.
    # @return [MerchantWebhookMoneyAmount]
    attr_accessor :min_charge_amount

    # Maximum payout delay allowed for subscription plan settlements.
    # @return [String]
    attr_accessor :max_payout_period

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['fixed_cycle'] = 'fixed_cycle'
      @_hash['fixed_cycle_amount'] = 'fixed_cycle_amount'
      @_hash['supported_payment_types'] = 'supported_payment_types'
      @_hash['min_charge_amount'] = 'min_charge_amount'
      @_hash['max_payout_period'] = 'max_payout_period'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        fixed_cycle
        fixed_cycle_amount
        supported_payment_types
        min_charge_amount
        max_payout_period
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        enabled
        fixed_cycle
        fixed_cycle_amount
        supported_payment_types
        max_payout_period
      ]
    end

    def initialize(enabled: SKIP, fixed_cycle: SKIP, fixed_cycle_amount: SKIP,
                   supported_payment_types: SKIP, min_charge_amount: SKIP,
                   max_payout_period: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @fixed_cycle = fixed_cycle unless fixed_cycle == SKIP
      @fixed_cycle_amount = fixed_cycle_amount unless fixed_cycle_amount == SKIP
      @supported_payment_types = supported_payment_types unless supported_payment_types == SKIP
      @min_charge_amount = min_charge_amount unless min_charge_amount == SKIP
      @max_payout_period = max_payout_period unless max_payout_period == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      fixed_cycle = hash.key?('fixed_cycle') ? hash['fixed_cycle'] : SKIP
      fixed_cycle_amount =
        hash.key?('fixed_cycle_amount') ? hash['fixed_cycle_amount'] : SKIP
      supported_payment_types =
        hash.key?('supported_payment_types') ? hash['supported_payment_types'] : SKIP
      min_charge_amount = MerchantWebhookMoneyAmount.from_hash(hash['min_charge_amount']) if
        hash['min_charge_amount']
      max_payout_period =
        hash.key?('max_payout_period') ? hash['max_payout_period'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookSubscriptionPlanConfiguration.new(enabled: enabled,
                                                       fixed_cycle: fixed_cycle,
                                                       fixed_cycle_amount: fixed_cycle_amount,
                                                       supported_payment_types: supported_payment_types,
                                                       min_charge_amount: min_charge_amount,
                                                       max_payout_period: max_payout_period,
                                                       additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, fixed_cycle: #{@fixed_cycle}, fixed_cycle_amount:"\
      " #{@fixed_cycle_amount}, supported_payment_types: #{@supported_payment_types},"\
      " min_charge_amount: #{@min_charge_amount}, max_payout_period: #{@max_payout_period},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, fixed_cycle: #{@fixed_cycle.inspect},"\
      " fixed_cycle_amount: #{@fixed_cycle_amount.inspect}, supported_payment_types:"\
      " #{@supported_payment_types.inspect}, min_charge_amount: #{@min_charge_amount.inspect},"\
      " max_payout_period: #{@max_payout_period.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
