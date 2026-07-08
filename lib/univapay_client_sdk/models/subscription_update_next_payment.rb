# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Fields that can be updated on the next scheduled payment.
  class SubscriptionUpdateNextPayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Next payment date (YYYY-MM-DD).  Note: Only available for merchants
    # permitted to edit next payment dates.
    # @return [Date]
    attr_accessor :due_date

    # Next payment amount. Not available for limited-cycle subscriptions.  Only
    # available for permitted merchants.  This does not change subsequent cycle
    # amounts.
    # @return [Integer]
    attr_accessor :amount

    # Schedule a status transition on a payment's due date. Set to `suspended`
    # or `canceled` to schedule termination. Send `null` to cancel a previously
    # scheduled transition.
    # @return [SubscriptionTerminateWithStatus]
    attr_accessor :terminate_with_status

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['due_date'] = 'due_date'
      @_hash['amount'] = 'amount'
      @_hash['terminate_with_status'] = 'terminate_with_status'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        due_date
        amount
        terminate_with_status
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        terminate_with_status
      ]
    end

    def initialize(due_date: SKIP, amount: SKIP, terminate_with_status: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @due_date = due_date unless due_date == SKIP
      @amount = amount unless amount == SKIP
      @terminate_with_status = terminate_with_status unless terminate_with_status == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      due_date = hash.key?('due_date') ? hash['due_date'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      terminate_with_status =
        hash.key?('terminate_with_status') ? hash['terminate_with_status'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionUpdateNextPayment.new(due_date: due_date,
                                        amount: amount,
                                        terminate_with_status: terminate_with_status,
                                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} due_date: #{@due_date}, amount: #{@amount}, terminate_with_status:"\
      " #{@terminate_with_status}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} due_date: #{@due_date.inspect}, amount: #{@amount.inspect},"\
      " terminate_with_status: #{@terminate_with_status.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
