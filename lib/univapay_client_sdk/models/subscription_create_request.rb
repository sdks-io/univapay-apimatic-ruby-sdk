# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request payload for creating a subscription.
  class SubscriptionCreateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Transaction token ID authorized for recurring payments.
    # @return [UUID | String]
    attr_accessor :transaction_token_id

    # Amount to be charged in each cycle.
    # @return [Integer]
    attr_accessor :amount

    # ISO-4217 currency code.
    # @return [String]
    attr_accessor :currency

    # Optional different amount for the first charge.
    # @return [Integer]
    attr_accessor :initial_amount

    # Subscription Period schema.
    # @return [SubscriptionPeriod]
    attr_accessor :period

    # ISO-8601 Duration for custom frequency (e.g., P3D, P2M).  Cannot be used
    # if 'period' is specified.
    # @return [String]
    attr_accessor :cyclical_period

    # Schedule settings applied to a subscription.
    # @return [SubscriptionScheduleSettings]
    attr_accessor :schedule_settings

    # Configuration for credit card company side installments.
    # @return [SubscriptionInstallmentPlan]
    attr_accessor :installment_plan

    # Configuration for limited-cycle subscriptions (Univapay side).
    # @return [SubscriptionPlanSettings]
    attr_accessor :subscription_plan

    # If true, the first charge will only be an authorization (Hold).
    # @return [TrueClass | FalseClass]
    attr_accessor :first_charge_authorization_only

    # ISO-8601 Duration for auto-capture if authorization only is true.  Allowed
    # days: P1D to P6D.
    # @return [String]
    attr_accessor :first_charge_capture_after

    # A free-form dictionary for custom metadata.
    # @return [GenericMetadata]
    attr_accessor :metadata

    # Charge Create Request Three Ds schema.
    # @return [ChargeCreateRequestThreeDs]
    attr_accessor :three_ds

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_token_id'] = 'transaction_token_id'
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['initial_amount'] = 'initial_amount'
      @_hash['period'] = 'period'
      @_hash['cyclical_period'] = 'cyclical_period'
      @_hash['schedule_settings'] = 'schedule_settings'
      @_hash['installment_plan'] = 'installment_plan'
      @_hash['subscription_plan'] = 'subscription_plan'
      @_hash['first_charge_authorization_only'] =
        'first_charge_authorization_only'
      @_hash['first_charge_capture_after'] = 'first_charge_capture_after'
      @_hash['metadata'] = 'metadata'
      @_hash['three_ds'] = 'three_ds'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        initial_amount
        period
        cyclical_period
        schedule_settings
        installment_plan
        subscription_plan
        first_charge_authorization_only
        first_charge_capture_after
        metadata
        three_ds
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(transaction_token_id:, amount:, currency:,
                   initial_amount: SKIP, period: SKIP, cyclical_period: SKIP,
                   schedule_settings: SKIP, installment_plan: SKIP,
                   subscription_plan: SKIP,
                   first_charge_authorization_only: false,
                   first_charge_capture_after: SKIP, metadata: SKIP,
                   three_ds: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @transaction_token_id = transaction_token_id
      @amount = amount
      @currency = currency
      @initial_amount = initial_amount unless initial_amount == SKIP
      @period = period unless period == SKIP
      @cyclical_period = cyclical_period unless cyclical_period == SKIP
      @schedule_settings = schedule_settings unless schedule_settings == SKIP
      @installment_plan = installment_plan unless installment_plan == SKIP
      @subscription_plan = subscription_plan unless subscription_plan == SKIP
      unless first_charge_authorization_only == SKIP
        @first_charge_authorization_only =
          first_charge_authorization_only
      end
      unless first_charge_capture_after == SKIP
        @first_charge_capture_after =
          first_charge_capture_after
      end
      @metadata = metadata unless metadata == SKIP
      @three_ds = three_ds unless three_ds == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_token_id =
        hash.key?('transaction_token_id') ? hash['transaction_token_id'] : nil
      amount = hash.key?('amount') ? hash['amount'] : nil
      currency = hash.key?('currency') ? hash['currency'] : nil
      initial_amount =
        hash.key?('initial_amount') ? hash['initial_amount'] : SKIP
      period = hash.key?('period') ? hash['period'] : SKIP
      cyclical_period =
        hash.key?('cyclical_period') ? hash['cyclical_period'] : SKIP
      schedule_settings = SubscriptionScheduleSettings.from_hash(hash['schedule_settings']) if
        hash['schedule_settings']
      installment_plan = SubscriptionInstallmentPlan.from_hash(hash['installment_plan']) if
        hash['installment_plan']
      subscription_plan = SubscriptionPlanSettings.from_hash(hash['subscription_plan']) if
        hash['subscription_plan']
      first_charge_authorization_only =
        hash['first_charge_authorization_only'] ||= false
      first_charge_capture_after =
        hash.key?('first_charge_capture_after') ? hash['first_charge_capture_after'] : SKIP
      metadata = GenericMetadata.from_hash(hash['metadata']) if hash['metadata']
      three_ds = ChargeCreateRequestThreeDs.from_hash(hash['three_ds']) if hash['three_ds']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionCreateRequest.new(transaction_token_id: transaction_token_id,
                                    amount: amount,
                                    currency: currency,
                                    initial_amount: initial_amount,
                                    period: period,
                                    cyclical_period: cyclical_period,
                                    schedule_settings: schedule_settings,
                                    installment_plan: installment_plan,
                                    subscription_plan: subscription_plan,
                                    first_charge_authorization_only: first_charge_authorization_only,
                                    first_charge_capture_after: first_charge_capture_after,
                                    metadata: metadata,
                                    three_ds: three_ds,
                                    additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} transaction_token_id: #{@transaction_token_id}, amount: #{@amount},"\
      " currency: #{@currency}, initial_amount: #{@initial_amount}, period: #{@period},"\
      " cyclical_period: #{@cyclical_period}, schedule_settings: #{@schedule_settings},"\
      " installment_plan: #{@installment_plan}, subscription_plan: #{@subscription_plan},"\
      " first_charge_authorization_only: #{@first_charge_authorization_only},"\
      " first_charge_capture_after: #{@first_charge_capture_after}, metadata: #{@metadata},"\
      " three_ds: #{@three_ds}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} transaction_token_id: #{@transaction_token_id.inspect}, amount:"\
      " #{@amount.inspect}, currency: #{@currency.inspect}, initial_amount:"\
      " #{@initial_amount.inspect}, period: #{@period.inspect}, cyclical_period:"\
      " #{@cyclical_period.inspect}, schedule_settings: #{@schedule_settings.inspect},"\
      " installment_plan: #{@installment_plan.inspect}, subscription_plan:"\
      " #{@subscription_plan.inspect}, first_charge_authorization_only:"\
      " #{@first_charge_authorization_only.inspect}, first_charge_capture_after:"\
      " #{@first_charge_capture_after.inspect}, metadata: #{@metadata.inspect}, three_ds:"\
      " #{@three_ds.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
