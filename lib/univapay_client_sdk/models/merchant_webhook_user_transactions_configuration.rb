# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Merchant transaction notification settings.
  class MerchantWebhookUserTransactionsConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enables merchant transaction notifications.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # Sends transaction notifications to the customer.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_customer

    # Sends notifications for test-mode events.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_on_test

    # Sends notifications when a recurring token is created.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_on_recurring_token_creation

    # Sends notifications when recurring-token CVV confirmation fails.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_on_recurring_token_cvv_failed

    # Sends notifications after repeated webhook delivery failures.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_on_webhook_failure

    # Sends notifications when webhook delivery is disabled.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_on_webhook_disabled

    # Sends merchant notifications for failed transactions.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_user_on_failed_transactions

    # Sends customer notifications for failed transactions.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_customer_on_failed_transactions

    # Sends merchant notifications with convenience-store payment instructions.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_user_on_convenience_instructions

    # Sends notifications for subscription lifecycle events.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_on_subscriptions

    # Sends notifications for authorization-only charges.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_on_authorizations

    # Sends notifications for CVV authorization events.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_on_cvv_authorizations

    # Sends notifications when charges are canceled.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_on_cancels

    # Includes customer self-service links in supported notifications.
    # @return [TrueClass | FalseClass]
    attr_accessor :customer_refer_link_enabled

    # Sends notifications when convenience payments expire.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_on_convenience_expiry

    # Sends notifications when recurring tokens are created through 3-D Secure.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_on_recurring_token_creation_with_three_ds

    # Sends notifications for chargeback events.
    # @return [TrueClass | FalseClass]
    attr_accessor :notify_on_chargebacks

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['notify_customer'] = 'notify_customer'
      @_hash['notify_on_test'] = 'notify_on_test'
      @_hash['notify_on_recurring_token_creation'] =
        'notify_on_recurring_token_creation'
      @_hash['notify_on_recurring_token_cvv_failed'] =
        'notify_on_recurring_token_cvv_failed'
      @_hash['notify_on_webhook_failure'] = 'notify_on_webhook_failure'
      @_hash['notify_on_webhook_disabled'] = 'notify_on_webhook_disabled'
      @_hash['notify_user_on_failed_transactions'] =
        'notify_user_on_failed_transactions'
      @_hash['notify_customer_on_failed_transactions'] =
        'notify_customer_on_failed_transactions'
      @_hash['notify_user_on_convenience_instructions'] =
        'notify_user_on_convenience_instructions'
      @_hash['notify_on_subscriptions'] = 'notify_on_subscriptions'
      @_hash['notify_on_authorizations'] = 'notify_on_authorizations'
      @_hash['notify_on_cvv_authorizations'] = 'notify_on_cvv_authorizations'
      @_hash['notify_on_cancels'] = 'notify_on_cancels'
      @_hash['customer_refer_link_enabled'] = 'customer_refer_link_enabled'
      @_hash['notify_on_convenience_expiry'] = 'notify_on_convenience_expiry'
      @_hash['notify_on_recurring_token_creation_with_three_ds'] =
        'notify_on_recurring_token_creation_with_three_ds'
      @_hash['notify_on_chargebacks'] = 'notify_on_chargebacks'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        notify_customer
        notify_on_test
        notify_on_recurring_token_creation
        notify_on_recurring_token_cvv_failed
        notify_on_webhook_failure
        notify_on_webhook_disabled
        notify_user_on_failed_transactions
        notify_customer_on_failed_transactions
        notify_user_on_convenience_instructions
        notify_on_subscriptions
        notify_on_authorizations
        notify_on_cvv_authorizations
        notify_on_cancels
        customer_refer_link_enabled
        notify_on_convenience_expiry
        notify_on_recurring_token_creation_with_three_ds
        notify_on_chargebacks
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        enabled
        notify_customer
        notify_on_test
        notify_on_recurring_token_creation
        notify_on_recurring_token_cvv_failed
        notify_on_webhook_failure
        notify_on_webhook_disabled
        notify_user_on_failed_transactions
        notify_customer_on_failed_transactions
        notify_user_on_convenience_instructions
        notify_on_subscriptions
        notify_on_authorizations
        notify_on_cvv_authorizations
        notify_on_cancels
        customer_refer_link_enabled
        notify_on_convenience_expiry
        notify_on_recurring_token_creation_with_three_ds
        notify_on_chargebacks
      ]
    end

    def initialize(enabled: SKIP, notify_customer: SKIP, notify_on_test: SKIP,
                   notify_on_recurring_token_creation: SKIP,
                   notify_on_recurring_token_cvv_failed: SKIP,
                   notify_on_webhook_failure: SKIP,
                   notify_on_webhook_disabled: SKIP,
                   notify_user_on_failed_transactions: SKIP,
                   notify_customer_on_failed_transactions: SKIP,
                   notify_user_on_convenience_instructions: SKIP,
                   notify_on_subscriptions: SKIP,
                   notify_on_authorizations: SKIP,
                   notify_on_cvv_authorizations: SKIP, notify_on_cancels: SKIP,
                   customer_refer_link_enabled: SKIP,
                   notify_on_convenience_expiry: SKIP,
                   notify_on_recurring_token_creation_with_three_ds: SKIP,
                   notify_on_chargebacks: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @notify_customer = notify_customer unless notify_customer == SKIP
      @notify_on_test = notify_on_test unless notify_on_test == SKIP
      unless notify_on_recurring_token_creation == SKIP
        @notify_on_recurring_token_creation =
          notify_on_recurring_token_creation
      end
      unless notify_on_recurring_token_cvv_failed == SKIP
        @notify_on_recurring_token_cvv_failed =
          notify_on_recurring_token_cvv_failed
      end
      unless notify_on_webhook_failure == SKIP
        @notify_on_webhook_failure =
          notify_on_webhook_failure
      end
      unless notify_on_webhook_disabled == SKIP
        @notify_on_webhook_disabled =
          notify_on_webhook_disabled
      end
      unless notify_user_on_failed_transactions == SKIP
        @notify_user_on_failed_transactions =
          notify_user_on_failed_transactions
      end
      unless notify_customer_on_failed_transactions == SKIP
        @notify_customer_on_failed_transactions =
          notify_customer_on_failed_transactions
      end
      unless notify_user_on_convenience_instructions == SKIP
        @notify_user_on_convenience_instructions =
          notify_user_on_convenience_instructions
      end
      @notify_on_subscriptions = notify_on_subscriptions unless notify_on_subscriptions == SKIP
      @notify_on_authorizations = notify_on_authorizations unless notify_on_authorizations == SKIP
      unless notify_on_cvv_authorizations == SKIP
        @notify_on_cvv_authorizations =
          notify_on_cvv_authorizations
      end
      @notify_on_cancels = notify_on_cancels unless notify_on_cancels == SKIP
      unless customer_refer_link_enabled == SKIP
        @customer_refer_link_enabled =
          customer_refer_link_enabled
      end
      unless notify_on_convenience_expiry == SKIP
        @notify_on_convenience_expiry =
          notify_on_convenience_expiry
      end
      unless notify_on_recurring_token_creation_with_three_ds == SKIP
        @notify_on_recurring_token_creation_with_three_ds =
          notify_on_recurring_token_creation_with_three_ds
      end
      @notify_on_chargebacks = notify_on_chargebacks unless notify_on_chargebacks == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      notify_customer =
        hash.key?('notify_customer') ? hash['notify_customer'] : SKIP
      notify_on_test =
        hash.key?('notify_on_test') ? hash['notify_on_test'] : SKIP
      notify_on_recurring_token_creation =
        hash.key?('notify_on_recurring_token_creation') ? hash['notify_on_recurring_token_creation'] : SKIP
      notify_on_recurring_token_cvv_failed =
        hash.key?('notify_on_recurring_token_cvv_failed') ? hash['notify_on_recurring_token_cvv_failed'] : SKIP
      notify_on_webhook_failure =
        hash.key?('notify_on_webhook_failure') ? hash['notify_on_webhook_failure'] : SKIP
      notify_on_webhook_disabled =
        hash.key?('notify_on_webhook_disabled') ? hash['notify_on_webhook_disabled'] : SKIP
      notify_user_on_failed_transactions =
        hash.key?('notify_user_on_failed_transactions') ? hash['notify_user_on_failed_transactions'] : SKIP
      notify_customer_on_failed_transactions =
        hash.key?('notify_customer_on_failed_transactions') ? hash['notify_customer_on_failed_transactions'] : SKIP
      notify_user_on_convenience_instructions =
        hash.key?('notify_user_on_convenience_instructions') ? hash['notify_user_on_convenience_instructions'] : SKIP
      notify_on_subscriptions =
        hash.key?('notify_on_subscriptions') ? hash['notify_on_subscriptions'] : SKIP
      notify_on_authorizations =
        hash.key?('notify_on_authorizations') ? hash['notify_on_authorizations'] : SKIP
      notify_on_cvv_authorizations =
        hash.key?('notify_on_cvv_authorizations') ? hash['notify_on_cvv_authorizations'] : SKIP
      notify_on_cancels =
        hash.key?('notify_on_cancels') ? hash['notify_on_cancels'] : SKIP
      customer_refer_link_enabled =
        hash.key?('customer_refer_link_enabled') ? hash['customer_refer_link_enabled'] : SKIP
      notify_on_convenience_expiry =
        hash.key?('notify_on_convenience_expiry') ? hash['notify_on_convenience_expiry'] : SKIP
      notify_on_recurring_token_creation_with_three_ds =
        hash.key?('notify_on_recurring_token_creation_with_three_ds') ? hash['notify_on_recurring_token_creation_with_three_ds'] : SKIP
      notify_on_chargebacks =
        hash.key?('notify_on_chargebacks') ? hash['notify_on_chargebacks'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookUserTransactionsConfiguration.new(enabled: enabled,
                                                       notify_customer: notify_customer,
                                                       notify_on_test: notify_on_test,
                                                       notify_on_recurring_token_creation: notify_on_recurring_token_creation,
                                                       notify_on_recurring_token_cvv_failed: notify_on_recurring_token_cvv_failed,
                                                       notify_on_webhook_failure: notify_on_webhook_failure,
                                                       notify_on_webhook_disabled: notify_on_webhook_disabled,
                                                       notify_user_on_failed_transactions: notify_user_on_failed_transactions,
                                                       notify_customer_on_failed_transactions: notify_customer_on_failed_transactions,
                                                       notify_user_on_convenience_instructions: notify_user_on_convenience_instructions,
                                                       notify_on_subscriptions: notify_on_subscriptions,
                                                       notify_on_authorizations: notify_on_authorizations,
                                                       notify_on_cvv_authorizations: notify_on_cvv_authorizations,
                                                       notify_on_cancels: notify_on_cancels,
                                                       customer_refer_link_enabled: customer_refer_link_enabled,
                                                       notify_on_convenience_expiry: notify_on_convenience_expiry,
                                                       notify_on_recurring_token_creation_with_three_ds: notify_on_recurring_token_creation_with_three_ds,
                                                       notify_on_chargebacks: notify_on_chargebacks,
                                                       additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, notify_customer: #{@notify_customer}, notify_on_test:"\
      " #{@notify_on_test}, notify_on_recurring_token_creation:"\
      " #{@notify_on_recurring_token_creation}, notify_on_recurring_token_cvv_failed:"\
      " #{@notify_on_recurring_token_cvv_failed}, notify_on_webhook_failure:"\
      " #{@notify_on_webhook_failure}, notify_on_webhook_disabled: #{@notify_on_webhook_disabled},"\
      " notify_user_on_failed_transactions: #{@notify_user_on_failed_transactions},"\
      " notify_customer_on_failed_transactions: #{@notify_customer_on_failed_transactions},"\
      " notify_user_on_convenience_instructions: #{@notify_user_on_convenience_instructions},"\
      " notify_on_subscriptions: #{@notify_on_subscriptions}, notify_on_authorizations:"\
      " #{@notify_on_authorizations}, notify_on_cvv_authorizations:"\
      " #{@notify_on_cvv_authorizations}, notify_on_cancels: #{@notify_on_cancels},"\
      " customer_refer_link_enabled: #{@customer_refer_link_enabled},"\
      " notify_on_convenience_expiry: #{@notify_on_convenience_expiry},"\
      ' notify_on_recurring_token_creation_with_three_ds:'\
      " #{@notify_on_recurring_token_creation_with_three_ds}, notify_on_chargebacks:"\
      " #{@notify_on_chargebacks}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, notify_customer: #{@notify_customer.inspect},"\
      " notify_on_test: #{@notify_on_test.inspect}, notify_on_recurring_token_creation:"\
      " #{@notify_on_recurring_token_creation.inspect}, notify_on_recurring_token_cvv_failed:"\
      " #{@notify_on_recurring_token_cvv_failed.inspect}, notify_on_webhook_failure:"\
      " #{@notify_on_webhook_failure.inspect}, notify_on_webhook_disabled:"\
      " #{@notify_on_webhook_disabled.inspect}, notify_user_on_failed_transactions:"\
      " #{@notify_user_on_failed_transactions.inspect}, notify_customer_on_failed_transactions:"\
      " #{@notify_customer_on_failed_transactions.inspect},"\
      ' notify_user_on_convenience_instructions:'\
      " #{@notify_user_on_convenience_instructions.inspect}, notify_on_subscriptions:"\
      " #{@notify_on_subscriptions.inspect}, notify_on_authorizations:"\
      " #{@notify_on_authorizations.inspect}, notify_on_cvv_authorizations:"\
      " #{@notify_on_cvv_authorizations.inspect}, notify_on_cancels:"\
      " #{@notify_on_cancels.inspect}, customer_refer_link_enabled:"\
      " #{@customer_refer_link_enabled.inspect}, notify_on_convenience_expiry:"\
      " #{@notify_on_convenience_expiry.inspect},"\
      ' notify_on_recurring_token_creation_with_three_ds:'\
      " #{@notify_on_recurring_token_creation_with_three_ds.inspect}, notify_on_chargebacks:"\
      " #{@notify_on_chargebacks.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
