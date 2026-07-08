# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request body for updating a scheduled payment. All fields are optional.
  # Omitted fields are left unchanged.
  class SubscriptionPatchPaymentRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # New due date for this payment (YYYY-MM-DD).  Only available to merchants
    # with permission to edit payment dates.
    # @return [Date]
    attr_accessor :due_date

    # Mark this payment as paid. Setting to `true` will trigger scheduling  of
    # the next payment in the cycle.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_paid

    # Schedule a status transition on a payment's due date. Set to `suspended`
    # or `canceled` to schedule termination. Send `null` to cancel a previously
    # scheduled transition.
    # @return [SubscriptionTerminateWithStatus]
    attr_accessor :terminate_with_status

    # ISO-8601 Duration override for the retry interval on a scheduled payment
    # (for example `P3D`). Send `null` to clear.
    # @return [String]
    attr_accessor :retry_interval

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['due_date'] = 'due_date'
      @_hash['is_paid'] = 'is_paid'
      @_hash['terminate_with_status'] = 'terminate_with_status'
      @_hash['retry_interval'] = 'retry_interval'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        due_date
        is_paid
        terminate_with_status
        retry_interval
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        terminate_with_status
        retry_interval
      ]
    end

    def initialize(due_date: SKIP, is_paid: SKIP, terminate_with_status: SKIP,
                   retry_interval: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @due_date = due_date unless due_date == SKIP
      @is_paid = is_paid unless is_paid == SKIP
      @terminate_with_status = terminate_with_status unless terminate_with_status == SKIP
      @retry_interval = retry_interval unless retry_interval == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      due_date = hash.key?('due_date') ? hash['due_date'] : SKIP
      is_paid = hash.key?('is_paid') ? hash['is_paid'] : SKIP
      terminate_with_status =
        hash.key?('terminate_with_status') ? hash['terminate_with_status'] : SKIP
      retry_interval =
        hash.key?('retry_interval') ? hash['retry_interval'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionPatchPaymentRequest.new(due_date: due_date,
                                          is_paid: is_paid,
                                          terminate_with_status: terminate_with_status,
                                          retry_interval: retry_interval,
                                          additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} due_date: #{@due_date}, is_paid: #{@is_paid}, terminate_with_status:"\
      " #{@terminate_with_status}, retry_interval: #{@retry_interval}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} due_date: #{@due_date.inspect}, is_paid: #{@is_paid.inspect},"\
      " terminate_with_status: #{@terminate_with_status.inspect}, retry_interval:"\
      " #{@retry_interval.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
