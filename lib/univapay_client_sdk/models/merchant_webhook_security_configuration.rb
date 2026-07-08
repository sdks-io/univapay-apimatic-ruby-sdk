# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Merchant-level fraud and refund safety settings.
  class MerchantWebhookSecurityConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # ISO-8601 duration between card charge attempts.
    # @return [String]
    attr_accessor :card_charge_cooldown

    # ISO-8601 duration between subscription charge attempts.
    # @return [String]
    attr_accessor :subscription_cooldown

    # ISO-8601 duration for reusing an idempotent card charge key.
    # @return [String]
    attr_accessor :idempotent_card_charge_cooldown

    # ISO-8601 duration for reusing an idempotent subscription key.
    # @return [String]
    attr_accessor :idempotent_subscription_cooldown

    # IP restriction policy applied after repeated failed charges.
    # @return [RestrictIpAfterFailedChargeConfig]
    attr_accessor :restrict_ip_after_failed_charge

    # Look-back period used to review suspicious login activity.
    # @return [String]
    attr_accessor :inspect_suspicious_login_after

    # Maximum refund-to-sales percentage allowed before restriction.
    # @return [Float]
    attr_accessor :refund_percent_limit

    # Per-card velocity limit configuration.
    # @return [MerchantWebhookLimitChargeByCardConfiguration]
    attr_accessor :limit_charge_by_card_configuration

    # Requires confirmation before protected refund actions proceed.
    # @return [TrueClass | FalseClass]
    attr_accessor :confirmation_required

    # Minimum refund amount, in minor units, subject to confirmation checks.
    # @return [Integer]
    attr_accessor :min_refund_threshold

    # Refund-limiting configuration based on sales history.
    # @return [MerchantWebhookLimitRefundBySalesConfiguration]
    attr_accessor :limit_refund_by_sales

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['card_charge_cooldown'] = 'card_charge_cooldown'
      @_hash['subscription_cooldown'] = 'subscription_cooldown'
      @_hash['idempotent_card_charge_cooldown'] =
        'idempotent_card_charge_cooldown'
      @_hash['idempotent_subscription_cooldown'] =
        'idempotent_subscription_cooldown'
      @_hash['restrict_ip_after_failed_charge'] =
        'restrict_ip_after_failed_charge'
      @_hash['inspect_suspicious_login_after'] =
        'inspect_suspicious_login_after'
      @_hash['refund_percent_limit'] = 'refund_percent_limit'
      @_hash['limit_charge_by_card_configuration'] =
        'limit_charge_by_card_configuration'
      @_hash['confirmation_required'] = 'confirmation_required'
      @_hash['min_refund_threshold'] = 'min_refund_threshold'
      @_hash['limit_refund_by_sales'] = 'limit_refund_by_sales'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        card_charge_cooldown
        subscription_cooldown
        idempotent_card_charge_cooldown
        idempotent_subscription_cooldown
        restrict_ip_after_failed_charge
        inspect_suspicious_login_after
        refund_percent_limit
        limit_charge_by_card_configuration
        confirmation_required
        min_refund_threshold
        limit_refund_by_sales
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        card_charge_cooldown
        subscription_cooldown
        idempotent_card_charge_cooldown
        idempotent_subscription_cooldown
        inspect_suspicious_login_after
        refund_percent_limit
        confirmation_required
        min_refund_threshold
      ]
    end

    def initialize(card_charge_cooldown: SKIP, subscription_cooldown: SKIP,
                   idempotent_card_charge_cooldown: SKIP,
                   idempotent_subscription_cooldown: SKIP,
                   restrict_ip_after_failed_charge: SKIP,
                   inspect_suspicious_login_after: SKIP,
                   refund_percent_limit: SKIP,
                   limit_charge_by_card_configuration: SKIP,
                   confirmation_required: SKIP, min_refund_threshold: SKIP,
                   limit_refund_by_sales: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @card_charge_cooldown = card_charge_cooldown unless card_charge_cooldown == SKIP
      @subscription_cooldown = subscription_cooldown unless subscription_cooldown == SKIP
      unless idempotent_card_charge_cooldown == SKIP
        @idempotent_card_charge_cooldown =
          idempotent_card_charge_cooldown
      end
      unless idempotent_subscription_cooldown == SKIP
        @idempotent_subscription_cooldown =
          idempotent_subscription_cooldown
      end
      unless restrict_ip_after_failed_charge == SKIP
        @restrict_ip_after_failed_charge =
          restrict_ip_after_failed_charge
      end
      unless inspect_suspicious_login_after == SKIP
        @inspect_suspicious_login_after =
          inspect_suspicious_login_after
      end
      @refund_percent_limit = refund_percent_limit unless refund_percent_limit == SKIP
      unless limit_charge_by_card_configuration == SKIP
        @limit_charge_by_card_configuration =
          limit_charge_by_card_configuration
      end
      @confirmation_required = confirmation_required unless confirmation_required == SKIP
      @min_refund_threshold = min_refund_threshold unless min_refund_threshold == SKIP
      @limit_refund_by_sales = limit_refund_by_sales unless limit_refund_by_sales == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      card_charge_cooldown =
        hash.key?('card_charge_cooldown') ? hash['card_charge_cooldown'] : SKIP
      subscription_cooldown =
        hash.key?('subscription_cooldown') ? hash['subscription_cooldown'] : SKIP
      idempotent_card_charge_cooldown =
        hash.key?('idempotent_card_charge_cooldown') ? hash['idempotent_card_charge_cooldown'] : SKIP
      idempotent_subscription_cooldown =
        hash.key?('idempotent_subscription_cooldown') ? hash['idempotent_subscription_cooldown'] : SKIP
      if hash['restrict_ip_after_failed_charge']
        restrict_ip_after_failed_charge = RestrictIpAfterFailedChargeConfig.from_hash(hash['restrict_ip_after_failed_charge'])
      end
      inspect_suspicious_login_after =
        hash.key?('inspect_suspicious_login_after') ? hash['inspect_suspicious_login_after'] : SKIP
      refund_percent_limit =
        hash.key?('refund_percent_limit') ? hash['refund_percent_limit'] : SKIP
      if hash['limit_charge_by_card_configuration']
        limit_charge_by_card_configuration = MerchantWebhookLimitChargeByCardConfiguration.from_hash(hash['limit_charge_by_card_configuration'])
      end
      confirmation_required =
        hash.key?('confirmation_required') ? hash['confirmation_required'] : SKIP
      min_refund_threshold =
        hash.key?('min_refund_threshold') ? hash['min_refund_threshold'] : SKIP
      if hash['limit_refund_by_sales']
        limit_refund_by_sales = MerchantWebhookLimitRefundBySalesConfiguration.from_hash(hash['limit_refund_by_sales'])
      end

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookSecurityConfiguration.new(card_charge_cooldown: card_charge_cooldown,
                                               subscription_cooldown: subscription_cooldown,
                                               idempotent_card_charge_cooldown: idempotent_card_charge_cooldown,
                                               idempotent_subscription_cooldown: idempotent_subscription_cooldown,
                                               restrict_ip_after_failed_charge: restrict_ip_after_failed_charge,
                                               inspect_suspicious_login_after: inspect_suspicious_login_after,
                                               refund_percent_limit: refund_percent_limit,
                                               limit_charge_by_card_configuration: limit_charge_by_card_configuration,
                                               confirmation_required: confirmation_required,
                                               min_refund_threshold: min_refund_threshold,
                                               limit_refund_by_sales: limit_refund_by_sales,
                                               additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} card_charge_cooldown: #{@card_charge_cooldown}, subscription_cooldown:"\
      " #{@subscription_cooldown}, idempotent_card_charge_cooldown:"\
      " #{@idempotent_card_charge_cooldown}, idempotent_subscription_cooldown:"\
      " #{@idempotent_subscription_cooldown}, restrict_ip_after_failed_charge:"\
      " #{@restrict_ip_after_failed_charge}, inspect_suspicious_login_after:"\
      " #{@inspect_suspicious_login_after}, refund_percent_limit: #{@refund_percent_limit},"\
      " limit_charge_by_card_configuration: #{@limit_charge_by_card_configuration},"\
      " confirmation_required: #{@confirmation_required}, min_refund_threshold:"\
      " #{@min_refund_threshold}, limit_refund_by_sales: #{@limit_refund_by_sales},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} card_charge_cooldown: #{@card_charge_cooldown.inspect},"\
      " subscription_cooldown: #{@subscription_cooldown.inspect}, idempotent_card_charge_cooldown:"\
      " #{@idempotent_card_charge_cooldown.inspect}, idempotent_subscription_cooldown:"\
      " #{@idempotent_subscription_cooldown.inspect}, restrict_ip_after_failed_charge:"\
      " #{@restrict_ip_after_failed_charge.inspect}, inspect_suspicious_login_after:"\
      " #{@inspect_suspicious_login_after.inspect}, refund_percent_limit:"\
      " #{@refund_percent_limit.inspect}, limit_charge_by_card_configuration:"\
      " #{@limit_charge_by_card_configuration.inspect}, confirmation_required:"\
      " #{@confirmation_required.inspect}, min_refund_threshold: #{@min_refund_threshold.inspect},"\
      " limit_refund_by_sales: #{@limit_refund_by_sales.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
