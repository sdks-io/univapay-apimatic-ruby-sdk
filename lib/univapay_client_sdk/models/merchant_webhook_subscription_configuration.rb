# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Subscription feature configuration.
  class MerchantWebhookSubscriptionConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enables subscription payments.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # Number of failed charges allowed before cancellation.
    # @return [Integer]
    attr_accessor :failed_charges_to_cancel

    # Suspends the subscription when its latest charge is canceled.
    # @return [TrueClass | FalseClass]
    attr_accessor :suspend_on_cancel

    # Allows merchants to update scheduled subscription amounts.
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_merchant_amount_patch

    # Allows merchants to update scheduled subscription due dates.
    # @return [TrueClass | FalseClass]
    attr_accessor :allow_merchant_due_date_patch

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['failed_charges_to_cancel'] = 'failed_charges_to_cancel'
      @_hash['suspend_on_cancel'] = 'suspend_on_cancel'
      @_hash['allow_merchant_amount_patch'] = 'allow_merchant_amount_patch'
      @_hash['allow_merchant_due_date_patch'] =
        'allow_merchant_due_date_patch'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        failed_charges_to_cancel
        suspend_on_cancel
        allow_merchant_amount_patch
        allow_merchant_due_date_patch
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        enabled
        failed_charges_to_cancel
        suspend_on_cancel
        allow_merchant_amount_patch
        allow_merchant_due_date_patch
      ]
    end

    def initialize(enabled: SKIP, failed_charges_to_cancel: SKIP,
                   suspend_on_cancel: SKIP, allow_merchant_amount_patch: SKIP,
                   allow_merchant_due_date_patch: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @failed_charges_to_cancel = failed_charges_to_cancel unless failed_charges_to_cancel == SKIP
      @suspend_on_cancel = suspend_on_cancel unless suspend_on_cancel == SKIP
      unless allow_merchant_amount_patch == SKIP
        @allow_merchant_amount_patch =
          allow_merchant_amount_patch
      end
      unless allow_merchant_due_date_patch == SKIP
        @allow_merchant_due_date_patch =
          allow_merchant_due_date_patch
      end
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      failed_charges_to_cancel =
        hash.key?('failed_charges_to_cancel') ? hash['failed_charges_to_cancel'] : SKIP
      suspend_on_cancel =
        hash.key?('suspend_on_cancel') ? hash['suspend_on_cancel'] : SKIP
      allow_merchant_amount_patch =
        hash.key?('allow_merchant_amount_patch') ? hash['allow_merchant_amount_patch'] : SKIP
      allow_merchant_due_date_patch =
        hash.key?('allow_merchant_due_date_patch') ? hash['allow_merchant_due_date_patch'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookSubscriptionConfiguration.new(enabled: enabled,
                                                   failed_charges_to_cancel: failed_charges_to_cancel,
                                                   suspend_on_cancel: suspend_on_cancel,
                                                   allow_merchant_amount_patch: allow_merchant_amount_patch,
                                                   allow_merchant_due_date_patch: allow_merchant_due_date_patch,
                                                   additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, failed_charges_to_cancel:"\
      " #{@failed_charges_to_cancel}, suspend_on_cancel: #{@suspend_on_cancel},"\
      " allow_merchant_amount_patch: #{@allow_merchant_amount_patch},"\
      " allow_merchant_due_date_patch: #{@allow_merchant_due_date_patch}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, failed_charges_to_cancel:"\
      " #{@failed_charges_to_cancel.inspect}, suspend_on_cancel: #{@suspend_on_cancel.inspect},"\
      " allow_merchant_amount_patch: #{@allow_merchant_amount_patch.inspect},"\
      " allow_merchant_due_date_patch: #{@allow_merchant_due_date_patch.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
