# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Data payload for `bank_transfer_status_updated` webhook events. Contains the
  # bank transfer extension fields inlined alongside amount and metadata.
  class BankTransferStatusData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Bank transfer charge extension ID.
    # @return [UUID | String]
    attr_accessor :id

    # ID of the associated charge.
    # @return [UUID | String]
    attr_accessor :charge_id

    # Payment status of a bank transfer charge.
    # @return [BankTransferPaymentStatus]
    attr_accessor :payment_status

    # Date of the most recent deposit.
    # @return [DateTime]
    attr_accessor :latest_deposit_date

    # When the bank transfer extension record was created.
    # @return [DateTime]
    attr_accessor :created_on

    # Amount of the most recent deposit in minor currency units.
    # @return [Integer]
    attr_accessor :latest_deposit_amount

    # Current outstanding balance in minor currency units.
    # @return [Integer]
    attr_accessor :balance

    # ISO 4217 currency code.
    # @return [String]
    attr_accessor :currency

    # Total charge amount in minor currency units.
    # @return [Integer]
    attr_accessor :amount

    # Difference between paid and expected amount (positive = over, negative =
    # under).
    # @return [Integer]
    attr_accessor :amount_difference

    # A free-form dictionary for custom metadata.
    # @return [GenericMetadata]
    attr_accessor :token_metadata

    # A free-form dictionary for custom metadata.
    # @return [GenericMetadata]
    attr_accessor :charge_metadata

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['charge_id'] = 'charge_id'
      @_hash['payment_status'] = 'payment_status'
      @_hash['latest_deposit_date'] = 'latest_deposit_date'
      @_hash['created_on'] = 'created_on'
      @_hash['latest_deposit_amount'] = 'latest_deposit_amount'
      @_hash['balance'] = 'balance'
      @_hash['currency'] = 'currency'
      @_hash['amount'] = 'amount'
      @_hash['amount_difference'] = 'amount_difference'
      @_hash['token_metadata'] = 'token_metadata'
      @_hash['charge_metadata'] = 'charge_metadata'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        charge_id
        payment_status
        latest_deposit_date
        created_on
        latest_deposit_amount
        balance
        currency
        amount
        amount_difference
        token_metadata
        charge_metadata
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        id
        latest_deposit_date
        created_on
        latest_deposit_amount
        balance
        amount_difference
      ]
    end

    def initialize(id: SKIP, charge_id: SKIP, payment_status: SKIP,
                   latest_deposit_date: SKIP, created_on: SKIP,
                   latest_deposit_amount: SKIP, balance: SKIP, currency: SKIP,
                   amount: SKIP, amount_difference: SKIP, token_metadata: SKIP,
                   charge_metadata: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @charge_id = charge_id unless charge_id == SKIP
      @payment_status = payment_status unless payment_status == SKIP
      @latest_deposit_date = latest_deposit_date unless latest_deposit_date == SKIP
      @created_on = created_on unless created_on == SKIP
      @latest_deposit_amount = latest_deposit_amount unless latest_deposit_amount == SKIP
      @balance = balance unless balance == SKIP
      @currency = currency unless currency == SKIP
      @amount = amount unless amount == SKIP
      @amount_difference = amount_difference unless amount_difference == SKIP
      @token_metadata = token_metadata unless token_metadata == SKIP
      @charge_metadata = charge_metadata unless charge_metadata == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      charge_id = hash.key?('charge_id') ? hash['charge_id'] : SKIP
      payment_status =
        hash.key?('payment_status') ? hash['payment_status'] : SKIP
      latest_deposit_date = if hash.key?('latest_deposit_date')
                              (DateTimeHelper.from_rfc3339(hash['latest_deposit_date']) if hash['latest_deposit_date'])
                            else
                              SKIP
                            end
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end
      latest_deposit_amount =
        hash.key?('latest_deposit_amount') ? hash['latest_deposit_amount'] : SKIP
      balance = hash.key?('balance') ? hash['balance'] : SKIP
      currency = hash.key?('currency') ? hash['currency'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      amount_difference =
        hash.key?('amount_difference') ? hash['amount_difference'] : SKIP
      token_metadata = GenericMetadata.from_hash(hash['token_metadata']) if hash['token_metadata']
      charge_metadata = GenericMetadata.from_hash(hash['charge_metadata']) if
        hash['charge_metadata']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      BankTransferStatusData.new(id: id,
                                 charge_id: charge_id,
                                 payment_status: payment_status,
                                 latest_deposit_date: latest_deposit_date,
                                 created_on: created_on,
                                 latest_deposit_amount: latest_deposit_amount,
                                 balance: balance,
                                 currency: currency,
                                 amount: amount,
                                 amount_difference: amount_difference,
                                 token_metadata: token_metadata,
                                 charge_metadata: charge_metadata,
                                 additional_properties: additional_properties)
    end

    def to_custom_latest_deposit_date
      DateTimeHelper.to_rfc3339(latest_deposit_date)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Validates an instance of the object from a given value.
    # @param [BankTransferStatusData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, charge_id: #{@charge_id}, payment_status: #{@payment_status},"\
      " latest_deposit_date: #{@latest_deposit_date}, created_on: #{@created_on},"\
      " latest_deposit_amount: #{@latest_deposit_amount}, balance: #{@balance}, currency:"\
      " #{@currency}, amount: #{@amount}, amount_difference: #{@amount_difference},"\
      " token_metadata: #{@token_metadata}, charge_metadata: #{@charge_metadata},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, charge_id: #{@charge_id.inspect}, payment_status:"\
      " #{@payment_status.inspect}, latest_deposit_date: #{@latest_deposit_date.inspect},"\
      " created_on: #{@created_on.inspect}, latest_deposit_amount:"\
      " #{@latest_deposit_amount.inspect}, balance: #{@balance.inspect}, currency:"\
      " #{@currency.inspect}, amount: #{@amount.inspect}, amount_difference:"\
      " #{@amount_difference.inspect}, token_metadata: #{@token_metadata.inspect},"\
      " charge_metadata: #{@charge_metadata.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
