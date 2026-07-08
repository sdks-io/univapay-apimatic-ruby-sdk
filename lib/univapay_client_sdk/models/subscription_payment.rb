# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Represents a single scheduled or historical payment for a subscription.
  class SubscriptionPayment < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier.
    # @return [UUID | String]
    attr_accessor :id

    # Scheduled due date.
    # @return [Date]
    attr_accessor :due_date

    # IANA Timezone ID.
    # @return [String]
    attr_accessor :zone_id

    # Amount in the smallest currency unit.
    # @return [Integer]
    attr_accessor :amount

    # ISO-4217 currency code.
    # @return [String]
    attr_accessor :currency

    # Amount formatted for display.
    # @return [Float]
    attr_accessor :amount_formatted

    # Indicates whether this specific payment cycle has been successfully
    # charged.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_paid

    # Indicates if this is the final payment in a limited-cycle subscription.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_last_payment

    # Timestamp when the resource was created.
    # @return [DateTime]
    attr_accessor :created_on

    # Timestamp when the resource was last updated.
    # @return [DateTime]
    attr_accessor :updated_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['due_date'] = 'due_date'
      @_hash['zone_id'] = 'zone_id'
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['amount_formatted'] = 'amount_formatted'
      @_hash['is_paid'] = 'is_paid'
      @_hash['is_last_payment'] = 'is_last_payment'
      @_hash['created_on'] = 'created_on'
      @_hash['updated_on'] = 'updated_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        due_date
        zone_id
        amount
        currency
        amount_formatted
        is_paid
        is_last_payment
        created_on
        updated_on
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, due_date: SKIP, zone_id: SKIP, amount: SKIP,
                   currency: SKIP, amount_formatted: SKIP, is_paid: SKIP,
                   is_last_payment: SKIP, created_on: SKIP, updated_on: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @due_date = due_date unless due_date == SKIP
      @zone_id = zone_id unless zone_id == SKIP
      @amount = amount unless amount == SKIP
      @currency = currency unless currency == SKIP
      @amount_formatted = amount_formatted unless amount_formatted == SKIP
      @is_paid = is_paid unless is_paid == SKIP
      @is_last_payment = is_last_payment unless is_last_payment == SKIP
      @created_on = created_on unless created_on == SKIP
      @updated_on = updated_on unless updated_on == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      due_date = hash.key?('due_date') ? hash['due_date'] : SKIP
      zone_id = hash.key?('zone_id') ? hash['zone_id'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      amount_formatted =
        hash.key?('amount_formatted') ? hash['amount_formatted'] : SKIP
      is_paid = hash.key?('is_paid') ? hash['is_paid'] : SKIP
      is_last_payment =
        hash.key?('is_last_payment') ? hash['is_last_payment'] : SKIP
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end
      updated_on = if hash.key?('updated_on')
                     (DateTimeHelper.from_rfc3339(hash['updated_on']) if hash['updated_on'])
                   else
                     SKIP
                   end

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionPayment.new(id: id,
                              due_date: due_date,
                              zone_id: zone_id,
                              amount: amount,
                              currency: currency,
                              amount_formatted: amount_formatted,
                              is_paid: is_paid,
                              is_last_payment: is_last_payment,
                              created_on: created_on,
                              updated_on: updated_on,
                              additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    def to_custom_updated_on
      DateTimeHelper.to_rfc3339(updated_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, due_date: #{@due_date}, zone_id: #{@zone_id}, amount:"\
      " #{@amount}, currency: #{@currency}, amount_formatted: #{@amount_formatted}, is_paid:"\
      " #{@is_paid}, is_last_payment: #{@is_last_payment}, created_on: #{@created_on}, updated_on:"\
      " #{@updated_on}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, due_date: #{@due_date.inspect}, zone_id:"\
      " #{@zone_id.inspect}, amount: #{@amount.inspect}, currency: #{@currency.inspect},"\
      " amount_formatted: #{@amount_formatted.inspect}, is_paid: #{@is_paid.inspect},"\
      " is_last_payment: #{@is_last_payment.inspect}, created_on: #{@created_on.inspect},"\
      " updated_on: #{@updated_on.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
