# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Bank transfer payment settings.
  class MerchantWebhookBankTransferConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enables bank transfer payments.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # Requires the received deposit amount to exactly match the charge amount.
    # @return [TrueClass | FalseClass]
    attr_accessor :match_amount

    # ISO-8601 duration before the charge expires.
    # @return [String]
    attr_accessor :expiration

    # Threshold for provisioning additional virtual bank accounts.
    # @return [Integer]
    attr_accessor :virtual_bank_accounts_threshold

    # Number of virtual bank accounts fetched per replenishment batch.
    # @return [Integer]
    attr_accessor :virtual_bank_accounts_fetch_count

    # Default ISO-8601 extension period applied to eligible charges.
    # @return [String]
    attr_accessor :default_extension_period

    # Maximum ISO-8601 extension period allowed for a charge.
    # @return [String]
    attr_accessor :maximum_extension_period

    # Automatically extends eligible bank transfer charges.
    # @return [TrueClass | FalseClass]
    attr_accessor :automatic_extension_enabled

    # Sends notifications when a bank transfer charge is created.
    # @return [TrueClass | FalseClass]
    attr_accessor :charge_request_notification_enabled

    # Sends notifications when a bank transfer charge is canceled.
    # @return [TrueClass | FalseClass]
    attr_accessor :charge_request_canceled_notification_enabled

    # Sends notifications when a bank transfer charge expires.
    # @return [TrueClass | FalseClass]
    attr_accessor :charge_expired_notification_enabled

    # Sends notifications when a deposit is received.
    # @return [TrueClass | FalseClass]
    attr_accessor :deposit_received_notification_enabled

    # Sends notifications when a deposit is below the expected amount.
    # @return [TrueClass | FalseClass]
    attr_accessor :deposit_insufficient_notification_enabled

    # Sends notifications when a deposit exceeds the expected amount.
    # @return [TrueClass | FalseClass]
    attr_accessor :deposit_exceeded_notification_enabled

    # Sends notifications when a bank transfer charge is extended.
    # @return [TrueClass | FalseClass]
    attr_accessor :extension_notification_enabled

    # ISO-8601 lead time for payment reminder notifications.
    # @return [String]
    attr_accessor :remind_notification_period

    # Sends reminder notifications before bank transfer expiry.
    # @return [TrueClass | FalseClass]
    attr_accessor :remind_notification_enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['match_amount'] = 'match_amount'
      @_hash['expiration'] = 'expiration'
      @_hash['virtual_bank_accounts_threshold'] =
        'virtual_bank_accounts_threshold'
      @_hash['virtual_bank_accounts_fetch_count'] =
        'virtual_bank_accounts_fetch_count'
      @_hash['default_extension_period'] = 'default_extension_period'
      @_hash['maximum_extension_period'] = 'maximum_extension_period'
      @_hash['automatic_extension_enabled'] = 'automatic_extension_enabled'
      @_hash['charge_request_notification_enabled'] =
        'charge_request_notification_enabled'
      @_hash['charge_request_canceled_notification_enabled'] =
        'charge_request_canceled_notification_enabled'
      @_hash['charge_expired_notification_enabled'] =
        'charge_expired_notification_enabled'
      @_hash['deposit_received_notification_enabled'] =
        'deposit_received_notification_enabled'
      @_hash['deposit_insufficient_notification_enabled'] =
        'deposit_insufficient_notification_enabled'
      @_hash['deposit_exceeded_notification_enabled'] =
        'deposit_exceeded_notification_enabled'
      @_hash['extension_notification_enabled'] =
        'extension_notification_enabled'
      @_hash['remind_notification_period'] = 'remind_notification_period'
      @_hash['remind_notification_enabled'] = 'remind_notification_enabled'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        match_amount
        expiration
        virtual_bank_accounts_threshold
        virtual_bank_accounts_fetch_count
        default_extension_period
        maximum_extension_period
        automatic_extension_enabled
        charge_request_notification_enabled
        charge_request_canceled_notification_enabled
        charge_expired_notification_enabled
        deposit_received_notification_enabled
        deposit_insufficient_notification_enabled
        deposit_exceeded_notification_enabled
        extension_notification_enabled
        remind_notification_period
        remind_notification_enabled
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        enabled
        match_amount
        expiration
        virtual_bank_accounts_threshold
        virtual_bank_accounts_fetch_count
        default_extension_period
        maximum_extension_period
        automatic_extension_enabled
        charge_request_notification_enabled
        charge_request_canceled_notification_enabled
        charge_expired_notification_enabled
        deposit_received_notification_enabled
        deposit_insufficient_notification_enabled
        deposit_exceeded_notification_enabled
        extension_notification_enabled
        remind_notification_period
        remind_notification_enabled
      ]
    end

    def initialize(enabled: SKIP, match_amount: SKIP, expiration: SKIP,
                   virtual_bank_accounts_threshold: SKIP,
                   virtual_bank_accounts_fetch_count: SKIP,
                   default_extension_period: SKIP,
                   maximum_extension_period: SKIP,
                   automatic_extension_enabled: SKIP,
                   charge_request_notification_enabled: SKIP,
                   charge_request_canceled_notification_enabled: SKIP,
                   charge_expired_notification_enabled: SKIP,
                   deposit_received_notification_enabled: SKIP,
                   deposit_insufficient_notification_enabled: SKIP,
                   deposit_exceeded_notification_enabled: SKIP,
                   extension_notification_enabled: SKIP,
                   remind_notification_period: SKIP,
                   remind_notification_enabled: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @match_amount = match_amount unless match_amount == SKIP
      @expiration = expiration unless expiration == SKIP
      unless virtual_bank_accounts_threshold == SKIP
        @virtual_bank_accounts_threshold =
          virtual_bank_accounts_threshold
      end
      unless virtual_bank_accounts_fetch_count == SKIP
        @virtual_bank_accounts_fetch_count =
          virtual_bank_accounts_fetch_count
      end
      @default_extension_period = default_extension_period unless default_extension_period == SKIP
      @maximum_extension_period = maximum_extension_period unless maximum_extension_period == SKIP
      unless automatic_extension_enabled == SKIP
        @automatic_extension_enabled =
          automatic_extension_enabled
      end
      unless charge_request_notification_enabled == SKIP
        @charge_request_notification_enabled =
          charge_request_notification_enabled
      end
      unless charge_request_canceled_notification_enabled == SKIP
        @charge_request_canceled_notification_enabled =
          charge_request_canceled_notification_enabled
      end
      unless charge_expired_notification_enabled == SKIP
        @charge_expired_notification_enabled =
          charge_expired_notification_enabled
      end
      unless deposit_received_notification_enabled == SKIP
        @deposit_received_notification_enabled =
          deposit_received_notification_enabled
      end
      unless deposit_insufficient_notification_enabled == SKIP
        @deposit_insufficient_notification_enabled =
          deposit_insufficient_notification_enabled
      end
      unless deposit_exceeded_notification_enabled == SKIP
        @deposit_exceeded_notification_enabled =
          deposit_exceeded_notification_enabled
      end
      unless extension_notification_enabled == SKIP
        @extension_notification_enabled =
          extension_notification_enabled
      end
      unless remind_notification_period == SKIP
        @remind_notification_period =
          remind_notification_period
      end
      unless remind_notification_enabled == SKIP
        @remind_notification_enabled =
          remind_notification_enabled
      end
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      match_amount = hash.key?('match_amount') ? hash['match_amount'] : SKIP
      expiration = hash.key?('expiration') ? hash['expiration'] : SKIP
      virtual_bank_accounts_threshold =
        hash.key?('virtual_bank_accounts_threshold') ? hash['virtual_bank_accounts_threshold'] : SKIP
      virtual_bank_accounts_fetch_count =
        hash.key?('virtual_bank_accounts_fetch_count') ? hash['virtual_bank_accounts_fetch_count'] : SKIP
      default_extension_period =
        hash.key?('default_extension_period') ? hash['default_extension_period'] : SKIP
      maximum_extension_period =
        hash.key?('maximum_extension_period') ? hash['maximum_extension_period'] : SKIP
      automatic_extension_enabled =
        hash.key?('automatic_extension_enabled') ? hash['automatic_extension_enabled'] : SKIP
      charge_request_notification_enabled =
        hash.key?('charge_request_notification_enabled') ? hash['charge_request_notification_enabled'] : SKIP
      charge_request_canceled_notification_enabled =
        hash.key?('charge_request_canceled_notification_enabled') ? hash['charge_request_canceled_notification_enabled'] : SKIP
      charge_expired_notification_enabled =
        hash.key?('charge_expired_notification_enabled') ? hash['charge_expired_notification_enabled'] : SKIP
      deposit_received_notification_enabled =
        hash.key?('deposit_received_notification_enabled') ? hash['deposit_received_notification_enabled'] : SKIP
      deposit_insufficient_notification_enabled =
        hash.key?('deposit_insufficient_notification_enabled') ? hash['deposit_insufficient_notification_enabled'] : SKIP
      deposit_exceeded_notification_enabled =
        hash.key?('deposit_exceeded_notification_enabled') ? hash['deposit_exceeded_notification_enabled'] : SKIP
      extension_notification_enabled =
        hash.key?('extension_notification_enabled') ? hash['extension_notification_enabled'] : SKIP
      remind_notification_period =
        hash.key?('remind_notification_period') ? hash['remind_notification_period'] : SKIP
      remind_notification_enabled =
        hash.key?('remind_notification_enabled') ? hash['remind_notification_enabled'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookBankTransferConfiguration.new(enabled: enabled,
                                                   match_amount: match_amount,
                                                   expiration: expiration,
                                                   virtual_bank_accounts_threshold: virtual_bank_accounts_threshold,
                                                   virtual_bank_accounts_fetch_count: virtual_bank_accounts_fetch_count,
                                                   default_extension_period: default_extension_period,
                                                   maximum_extension_period: maximum_extension_period,
                                                   automatic_extension_enabled: automatic_extension_enabled,
                                                   charge_request_notification_enabled: charge_request_notification_enabled,
                                                   charge_request_canceled_notification_enabled: charge_request_canceled_notification_enabled,
                                                   charge_expired_notification_enabled: charge_expired_notification_enabled,
                                                   deposit_received_notification_enabled: deposit_received_notification_enabled,
                                                   deposit_insufficient_notification_enabled: deposit_insufficient_notification_enabled,
                                                   deposit_exceeded_notification_enabled: deposit_exceeded_notification_enabled,
                                                   extension_notification_enabled: extension_notification_enabled,
                                                   remind_notification_period: remind_notification_period,
                                                   remind_notification_enabled: remind_notification_enabled,
                                                   additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, match_amount: #{@match_amount}, expiration:"\
      " #{@expiration}, virtual_bank_accounts_threshold: #{@virtual_bank_accounts_threshold},"\
      " virtual_bank_accounts_fetch_count: #{@virtual_bank_accounts_fetch_count},"\
      " default_extension_period: #{@default_extension_period}, maximum_extension_period:"\
      " #{@maximum_extension_period}, automatic_extension_enabled:"\
      " #{@automatic_extension_enabled}, charge_request_notification_enabled:"\
      " #{@charge_request_notification_enabled}, charge_request_canceled_notification_enabled:"\
      " #{@charge_request_canceled_notification_enabled}, charge_expired_notification_enabled:"\
      " #{@charge_expired_notification_enabled}, deposit_received_notification_enabled:"\
      " #{@deposit_received_notification_enabled}, deposit_insufficient_notification_enabled:"\
      " #{@deposit_insufficient_notification_enabled}, deposit_exceeded_notification_enabled:"\
      " #{@deposit_exceeded_notification_enabled}, extension_notification_enabled:"\
      " #{@extension_notification_enabled}, remind_notification_period:"\
      " #{@remind_notification_period}, remind_notification_enabled:"\
      " #{@remind_notification_enabled}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, match_amount: #{@match_amount.inspect},"\
      " expiration: #{@expiration.inspect}, virtual_bank_accounts_threshold:"\
      " #{@virtual_bank_accounts_threshold.inspect}, virtual_bank_accounts_fetch_count:"\
      " #{@virtual_bank_accounts_fetch_count.inspect}, default_extension_period:"\
      " #{@default_extension_period.inspect}, maximum_extension_period:"\
      " #{@maximum_extension_period.inspect}, automatic_extension_enabled:"\
      " #{@automatic_extension_enabled.inspect}, charge_request_notification_enabled:"\
      " #{@charge_request_notification_enabled.inspect},"\
      ' charge_request_canceled_notification_enabled:'\
      " #{@charge_request_canceled_notification_enabled.inspect},"\
      " charge_expired_notification_enabled: #{@charge_expired_notification_enabled.inspect},"\
      " deposit_received_notification_enabled: #{@deposit_received_notification_enabled.inspect},"\
      ' deposit_insufficient_notification_enabled:'\
      " #{@deposit_insufficient_notification_enabled.inspect},"\
      " deposit_exceeded_notification_enabled: #{@deposit_exceeded_notification_enabled.inspect},"\
      " extension_notification_enabled: #{@extension_notification_enabled.inspect},"\
      " remind_notification_period: #{@remind_notification_period.inspect},"\
      " remind_notification_enabled: #{@remind_notification_enabled.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
