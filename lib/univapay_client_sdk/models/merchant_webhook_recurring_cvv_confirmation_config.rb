# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # CVV confirmation rules for recurring token charges.
  class MerchantWebhookRecurringCvvConfirmationConfig < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enables recurring-charge CVV confirmation checks.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # Amount thresholds that trigger CVV confirmation.
    # @return [Array[MerchantWebhookMoneyAmount]]
    attr_accessor :threshold

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['threshold'] = 'threshold'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        threshold
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        enabled
        threshold
      ]
    end

    def initialize(enabled: SKIP, threshold: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @threshold = threshold unless threshold == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      # Parameter is an array, so we need to iterate through it
      threshold = nil
      unless hash['threshold'].nil?
        threshold = []
        hash['threshold'].each do |structure|
          threshold << (MerchantWebhookMoneyAmount.from_hash(structure) if structure)
        end
      end

      threshold = SKIP unless hash.key?('threshold')

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookRecurringCvvConfirmationConfig.new(enabled: enabled,
                                                        threshold: threshold,
                                                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, threshold: #{@threshold}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, threshold: #{@threshold.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
