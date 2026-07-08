# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Subscription entry returned in list responses.
  class SubscriptionListItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier.
    # @return [UUID | String]
    attr_accessor :id

    # Store identifier.
    # @return [UUID | String]
    attr_accessor :store_id

    # Transaction token identifier.
    # @return [UUID | String]
    attr_accessor :transaction_token_id

    # Amount in the smallest currency unit.
    # @return [Integer]
    attr_accessor :amount

    # ISO-4217 currency code.
    # @return [String]
    attr_accessor :currency

    # Amount formatted for display.
    # @return [Float]
    attr_accessor :amount_formatted

    # Initial amount in the smallest currency unit.
    # @return [Integer]
    attr_accessor :initial_amount

    # Initial amount formatted for display.
    # @return [Float]
    attr_accessor :initial_amount_formatted

    # Timestamp when recurring cycles begin.
    # @return [DateTime]
    attr_accessor :subsequent_cycles_start

    # Schedule settings applied to a subscription.
    # @return [SubscriptionScheduleSettings]
    attr_accessor :schedule_settings

    # Whether only direct currency processing is allowed.
    # @return [TrueClass | FalseClass]
    attr_accessor :only_direct_currency

    # ISO-8601 Duration (e.g., P3D).
    # @return [String]
    attr_accessor :first_charge_capture_after

    # Whether the first charge is authorization-only.
    # @return [TrueClass | FalseClass]
    attr_accessor :first_charge_authorization_only

    # Subscription Status schema.
    # @return [SubscriptionStatus]
    attr_accessor :status

    # A free-form dictionary for custom metadata.
    # @return [GenericMetadata]
    attr_accessor :metadata

    # Charge Mode schema.
    # @return [ChargeMode]
    attr_accessor :mode

    # Timestamp when the resource was created.
    # @return [DateTime]
    attr_accessor :created_on

    # Subscription Period schema.
    # @return [SubscriptionPeriod]
    attr_accessor :period

    # Next scheduled payment details for a subscription.
    # @return [SubscriptionNextPayment]
    attr_accessor :next_payment

    # Merchant display name.
    # @return [String]
    attr_accessor :merchant_name

    # Store display name.
    # @return [String]
    attr_accessor :store_name

    # Payment method type.
    # @return [String]
    attr_accessor :payment_type

    # Next payment date value.
    # @return [Date]
    attr_accessor :next_payment_date

    # Customer-facing payment method summary data.
    # @return [SubscriptionUserData]
    attr_accessor :user_data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['store_id'] = 'store_id'
      @_hash['transaction_token_id'] = 'transaction_token_id'
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['amount_formatted'] = 'amount_formatted'
      @_hash['initial_amount'] = 'initial_amount'
      @_hash['initial_amount_formatted'] = 'initial_amount_formatted'
      @_hash['subsequent_cycles_start'] = 'subsequent_cycles_start'
      @_hash['schedule_settings'] = 'schedule_settings'
      @_hash['only_direct_currency'] = 'only_direct_currency'
      @_hash['first_charge_capture_after'] = 'first_charge_capture_after'
      @_hash['first_charge_authorization_only'] =
        'first_charge_authorization_only'
      @_hash['status'] = 'status'
      @_hash['metadata'] = 'metadata'
      @_hash['mode'] = 'mode'
      @_hash['created_on'] = 'created_on'
      @_hash['period'] = 'period'
      @_hash['next_payment'] = 'next_payment'
      @_hash['merchant_name'] = 'merchant_name'
      @_hash['store_name'] = 'store_name'
      @_hash['payment_type'] = 'payment_type'
      @_hash['next_payment_date'] = 'next_payment_date'
      @_hash['user_data'] = 'user_data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        store_id
        transaction_token_id
        amount
        currency
        amount_formatted
        initial_amount
        initial_amount_formatted
        subsequent_cycles_start
        schedule_settings
        only_direct_currency
        first_charge_capture_after
        first_charge_authorization_only
        status
        metadata
        mode
        created_on
        period
        next_payment
        merchant_name
        store_name
        payment_type
        next_payment_date
        user_data
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        initial_amount
        initial_amount_formatted
        subsequent_cycles_start
        first_charge_capture_after
      ]
    end

    def initialize(id: SKIP, store_id: SKIP, transaction_token_id: SKIP,
                   amount: SKIP, currency: SKIP, amount_formatted: SKIP,
                   initial_amount: SKIP, initial_amount_formatted: SKIP,
                   subsequent_cycles_start: SKIP, schedule_settings: SKIP,
                   only_direct_currency: SKIP, first_charge_capture_after: SKIP,
                   first_charge_authorization_only: SKIP, status: SKIP,
                   metadata: SKIP, mode: SKIP, created_on: SKIP, period: SKIP,
                   next_payment: SKIP, merchant_name: SKIP, store_name: SKIP,
                   payment_type: SKIP, next_payment_date: SKIP, user_data: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @store_id = store_id unless store_id == SKIP
      @transaction_token_id = transaction_token_id unless transaction_token_id == SKIP
      @amount = amount unless amount == SKIP
      @currency = currency unless currency == SKIP
      @amount_formatted = amount_formatted unless amount_formatted == SKIP
      @initial_amount = initial_amount unless initial_amount == SKIP
      @initial_amount_formatted = initial_amount_formatted unless initial_amount_formatted == SKIP
      @subsequent_cycles_start = subsequent_cycles_start unless subsequent_cycles_start == SKIP
      @schedule_settings = schedule_settings unless schedule_settings == SKIP
      @only_direct_currency = only_direct_currency unless only_direct_currency == SKIP
      unless first_charge_capture_after == SKIP
        @first_charge_capture_after =
          first_charge_capture_after
      end
      unless first_charge_authorization_only == SKIP
        @first_charge_authorization_only =
          first_charge_authorization_only
      end
      @status = status unless status == SKIP
      @metadata = metadata unless metadata == SKIP
      @mode = mode unless mode == SKIP
      @created_on = created_on unless created_on == SKIP
      @period = period unless period == SKIP
      @next_payment = next_payment unless next_payment == SKIP
      @merchant_name = merchant_name unless merchant_name == SKIP
      @store_name = store_name unless store_name == SKIP
      @payment_type = payment_type unless payment_type == SKIP
      @next_payment_date = next_payment_date unless next_payment_date == SKIP
      @user_data = user_data unless user_data == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      store_id = hash.key?('store_id') ? hash['store_id'] : SKIP
      transaction_token_id =
        hash.key?('transaction_token_id') ? hash['transaction_token_id'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      amount_formatted =
        hash.key?('amount_formatted') ? hash['amount_formatted'] : SKIP
      initial_amount =
        hash.key?('initial_amount') ? hash['initial_amount'] : SKIP
      initial_amount_formatted =
        hash.key?('initial_amount_formatted') ? hash['initial_amount_formatted'] : SKIP
      subsequent_cycles_start = if hash.key?('subsequent_cycles_start')
                                  (DateTimeHelper.from_rfc3339(hash['subsequent_cycles_start']) if hash['subsequent_cycles_start'])
                                else
                                  SKIP
                                end
      schedule_settings = SubscriptionScheduleSettings.from_hash(hash['schedule_settings']) if
        hash['schedule_settings']
      only_direct_currency =
        hash.key?('only_direct_currency') ? hash['only_direct_currency'] : SKIP
      first_charge_capture_after =
        hash.key?('first_charge_capture_after') ? hash['first_charge_capture_after'] : SKIP
      first_charge_authorization_only =
        hash.key?('first_charge_authorization_only') ? hash['first_charge_authorization_only'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      metadata = GenericMetadata.from_hash(hash['metadata']) if hash['metadata']
      mode = hash.key?('mode') ? hash['mode'] : SKIP
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end
      period = hash.key?('period') ? hash['period'] : SKIP
      next_payment = SubscriptionNextPayment.from_hash(hash['next_payment']) if
        hash['next_payment']
      merchant_name = hash.key?('merchant_name') ? hash['merchant_name'] : SKIP
      store_name = hash.key?('store_name') ? hash['store_name'] : SKIP
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP
      next_payment_date =
        hash.key?('next_payment_date') ? hash['next_payment_date'] : SKIP
      user_data = SubscriptionUserData.from_hash(hash['user_data']) if hash['user_data']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionListItem.new(id: id,
                               store_id: store_id,
                               transaction_token_id: transaction_token_id,
                               amount: amount,
                               currency: currency,
                               amount_formatted: amount_formatted,
                               initial_amount: initial_amount,
                               initial_amount_formatted: initial_amount_formatted,
                               subsequent_cycles_start: subsequent_cycles_start,
                               schedule_settings: schedule_settings,
                               only_direct_currency: only_direct_currency,
                               first_charge_capture_after: first_charge_capture_after,
                               first_charge_authorization_only: first_charge_authorization_only,
                               status: status,
                               metadata: metadata,
                               mode: mode,
                               created_on: created_on,
                               period: period,
                               next_payment: next_payment,
                               merchant_name: merchant_name,
                               store_name: store_name,
                               payment_type: payment_type,
                               next_payment_date: next_payment_date,
                               user_data: user_data,
                               additional_properties: additional_properties)
    end

    def to_custom_subsequent_cycles_start
      DateTimeHelper.to_rfc3339(subsequent_cycles_start)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, store_id: #{@store_id}, transaction_token_id:"\
      " #{@transaction_token_id}, amount: #{@amount}, currency: #{@currency}, amount_formatted:"\
      " #{@amount_formatted}, initial_amount: #{@initial_amount}, initial_amount_formatted:"\
      " #{@initial_amount_formatted}, subsequent_cycles_start: #{@subsequent_cycles_start},"\
      " schedule_settings: #{@schedule_settings}, only_direct_currency: #{@only_direct_currency},"\
      " first_charge_capture_after: #{@first_charge_capture_after},"\
      " first_charge_authorization_only: #{@first_charge_authorization_only}, status: #{@status},"\
      " metadata: #{@metadata}, mode: #{@mode}, created_on: #{@created_on}, period: #{@period},"\
      " next_payment: #{@next_payment}, merchant_name: #{@merchant_name}, store_name:"\
      " #{@store_name}, payment_type: #{@payment_type}, next_payment_date: #{@next_payment_date},"\
      " user_data: #{@user_data}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, store_id: #{@store_id.inspect}, transaction_token_id:"\
      " #{@transaction_token_id.inspect}, amount: #{@amount.inspect}, currency:"\
      " #{@currency.inspect}, amount_formatted: #{@amount_formatted.inspect}, initial_amount:"\
      " #{@initial_amount.inspect}, initial_amount_formatted:"\
      " #{@initial_amount_formatted.inspect}, subsequent_cycles_start:"\
      " #{@subsequent_cycles_start.inspect}, schedule_settings: #{@schedule_settings.inspect},"\
      " only_direct_currency: #{@only_direct_currency.inspect}, first_charge_capture_after:"\
      " #{@first_charge_capture_after.inspect}, first_charge_authorization_only:"\
      " #{@first_charge_authorization_only.inspect}, status: #{@status.inspect}, metadata:"\
      " #{@metadata.inspect}, mode: #{@mode.inspect}, created_on: #{@created_on.inspect}, period:"\
      " #{@period.inspect}, next_payment: #{@next_payment.inspect}, merchant_name:"\
      " #{@merchant_name.inspect}, store_name: #{@store_name.inspect}, payment_type:"\
      " #{@payment_type.inspect}, next_payment_date: #{@next_payment_date.inspect}, user_data:"\
      " #{@user_data.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
