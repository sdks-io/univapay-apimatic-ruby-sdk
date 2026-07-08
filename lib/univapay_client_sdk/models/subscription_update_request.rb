# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request payload for updating a subscription.
  class SubscriptionUpdateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Transaction token ID used for the subscription.  Can be changed to update
    # the payment method (e.g., when a card expires).  Allowed only when the
    # status is `unconfirmed`, `unpaid`, `current`, or `suspended`.
    # @return [UUID | String]
    attr_accessor :transaction_token_id

    # The recurring charge amount (applied to the cycle after the next one).
    # Not available for limited-cycle subscriptions.  To change the immediate
    # next payment amount, update `next_payment.amount` instead.
    # @return [Integer]
    attr_accessor :amount

    # A free-form dictionary for custom metadata.
    # @return [GenericMetadata]
    attr_accessor :metadata

    # Update the subscription status.  `suspended`: Pause the subscription.
    # `unpaid`: Resume a suspended subscription.
    # @return [SubscriptionUpdateStatus]
    attr_accessor :status

    # Schedule settings that can be updated on a subscription.
    # @return [SubscriptionUpdateScheduleSettings]
    attr_accessor :schedule_settings

    # Fields that can be updated on the next scheduled payment.
    # @return [SubscriptionUpdateNextPayment]
    attr_accessor :next_payment

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_token_id'] = 'transaction_token_id'
      @_hash['amount'] = 'amount'
      @_hash['metadata'] = 'metadata'
      @_hash['status'] = 'status'
      @_hash['schedule_settings'] = 'schedule_settings'
      @_hash['next_payment'] = 'next_payment'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        transaction_token_id
        amount
        metadata
        status
        schedule_settings
        next_payment
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(transaction_token_id: SKIP, amount: SKIP, metadata: SKIP,
                   status: SKIP, schedule_settings: SKIP, next_payment: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @transaction_token_id = transaction_token_id unless transaction_token_id == SKIP
      @amount = amount unless amount == SKIP
      @metadata = metadata unless metadata == SKIP
      @status = status unless status == SKIP
      @schedule_settings = schedule_settings unless schedule_settings == SKIP
      @next_payment = next_payment unless next_payment == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_token_id =
        hash.key?('transaction_token_id') ? hash['transaction_token_id'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      metadata = GenericMetadata.from_hash(hash['metadata']) if hash['metadata']
      status = hash.key?('status') ? hash['status'] : SKIP
      schedule_settings = SubscriptionUpdateScheduleSettings.from_hash(hash['schedule_settings']) if
        hash['schedule_settings']
      next_payment = SubscriptionUpdateNextPayment.from_hash(hash['next_payment']) if
        hash['next_payment']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionUpdateRequest.new(transaction_token_id: transaction_token_id,
                                    amount: amount,
                                    metadata: metadata,
                                    status: status,
                                    schedule_settings: schedule_settings,
                                    next_payment: next_payment,
                                    additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} transaction_token_id: #{@transaction_token_id}, amount: #{@amount},"\
      " metadata: #{@metadata}, status: #{@status}, schedule_settings: #{@schedule_settings},"\
      " next_payment: #{@next_payment}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} transaction_token_id: #{@transaction_token_id.inspect}, amount:"\
      " #{@amount.inspect}, metadata: #{@metadata.inspect}, status: #{@status.inspect},"\
      " schedule_settings: #{@schedule_settings.inspect}, next_payment: #{@next_payment.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
