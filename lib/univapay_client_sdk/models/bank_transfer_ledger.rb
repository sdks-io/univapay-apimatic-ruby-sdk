# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Single bank transfer ledger entry associated with a charge.
  class BankTransferLedger < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Bank Transfer Ledger Bank Ledger Type schema.
    # @return [BankTransferLedgerBankLedgerType]
    attr_accessor :bank_ledger_type

    # Amount in the smallest currency unit.
    # @return [Integer]
    attr_accessor :amount

    # Current balance in the smallest currency unit.
    # @return [Integer]
    attr_accessor :balance

    # Virtual bank account holder name.
    # @return [String]
    attr_accessor :virtual_bank_account_holder_name

    # Virtual bank account number.
    # @return [String]
    attr_accessor :virtual_bank_account_number

    # Virtual account id value.
    # @return [String]
    attr_accessor :virtual_account_id

    # Transaction date.
    # @return [Date]
    attr_accessor :transaction_date

    # Transaction timestamp.
    # @return [DateTime]
    attr_accessor :transaction_timestamp

    # Bank Transfer Ledger Mode schema.
    # @return [BankTransferLedgerMode]
    attr_accessor :mode

    # Timestamp when the resource was created.
    # @return [DateTime]
    attr_accessor :created_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['bank_ledger_type'] = 'bank_ledger_type'
      @_hash['amount'] = 'amount'
      @_hash['balance'] = 'balance'
      @_hash['virtual_bank_account_holder_name'] =
        'virtual_bank_account_holder_name'
      @_hash['virtual_bank_account_number'] = 'virtual_bank_account_number'
      @_hash['virtual_account_id'] = 'virtual_account_id'
      @_hash['transaction_date'] = 'transaction_date'
      @_hash['transaction_timestamp'] = 'transaction_timestamp'
      @_hash['mode'] = 'mode'
      @_hash['created_on'] = 'created_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        bank_ledger_type
        amount
        balance
        virtual_bank_account_holder_name
        virtual_bank_account_number
        virtual_account_id
        transaction_date
        transaction_timestamp
        mode
        created_on
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(bank_ledger_type: SKIP, amount: SKIP, balance: SKIP,
                   virtual_bank_account_holder_name: SKIP,
                   virtual_bank_account_number: SKIP, virtual_account_id: SKIP,
                   transaction_date: SKIP, transaction_timestamp: SKIP,
                   mode: SKIP, created_on: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @bank_ledger_type = bank_ledger_type unless bank_ledger_type == SKIP
      @amount = amount unless amount == SKIP
      @balance = balance unless balance == SKIP
      unless virtual_bank_account_holder_name == SKIP
        @virtual_bank_account_holder_name =
          virtual_bank_account_holder_name
      end
      unless virtual_bank_account_number == SKIP
        @virtual_bank_account_number =
          virtual_bank_account_number
      end
      @virtual_account_id = virtual_account_id unless virtual_account_id == SKIP
      @transaction_date = transaction_date unless transaction_date == SKIP
      @transaction_timestamp = transaction_timestamp unless transaction_timestamp == SKIP
      @mode = mode unless mode == SKIP
      @created_on = created_on unless created_on == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      bank_ledger_type =
        hash.key?('bank_ledger_type') ? hash['bank_ledger_type'] : SKIP
      amount = hash.key?('amount') ? hash['amount'] : SKIP
      balance = hash.key?('balance') ? hash['balance'] : SKIP
      virtual_bank_account_holder_name =
        hash.key?('virtual_bank_account_holder_name') ? hash['virtual_bank_account_holder_name'] : SKIP
      virtual_bank_account_number =
        hash.key?('virtual_bank_account_number') ? hash['virtual_bank_account_number'] : SKIP
      virtual_account_id =
        hash.key?('virtual_account_id') ? hash['virtual_account_id'] : SKIP
      transaction_date =
        hash.key?('transaction_date') ? hash['transaction_date'] : SKIP
      transaction_timestamp = if hash.key?('transaction_timestamp')
                                (DateTimeHelper.from_rfc3339(hash['transaction_timestamp']) if hash['transaction_timestamp'])
                              else
                                SKIP
                              end
      mode = hash.key?('mode') ? hash['mode'] : SKIP
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      BankTransferLedger.new(bank_ledger_type: bank_ledger_type,
                             amount: amount,
                             balance: balance,
                             virtual_bank_account_holder_name: virtual_bank_account_holder_name,
                             virtual_bank_account_number: virtual_bank_account_number,
                             virtual_account_id: virtual_account_id,
                             transaction_date: transaction_date,
                             transaction_timestamp: transaction_timestamp,
                             mode: mode,
                             created_on: created_on,
                             additional_properties: additional_properties)
    end

    def to_custom_transaction_timestamp
      DateTimeHelper.to_rfc3339(transaction_timestamp)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} bank_ledger_type: #{@bank_ledger_type}, amount: #{@amount}, balance:"\
      " #{@balance}, virtual_bank_account_holder_name: #{@virtual_bank_account_holder_name},"\
      " virtual_bank_account_number: #{@virtual_bank_account_number}, virtual_account_id:"\
      " #{@virtual_account_id}, transaction_date: #{@transaction_date}, transaction_timestamp:"\
      " #{@transaction_timestamp}, mode: #{@mode}, created_on: #{@created_on},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} bank_ledger_type: #{@bank_ledger_type.inspect}, amount: #{@amount.inspect},"\
      " balance: #{@balance.inspect}, virtual_bank_account_holder_name:"\
      " #{@virtual_bank_account_holder_name.inspect}, virtual_bank_account_number:"\
      " #{@virtual_bank_account_number.inspect}, virtual_account_id:"\
      " #{@virtual_account_id.inspect}, transaction_date: #{@transaction_date.inspect},"\
      " transaction_timestamp: #{@transaction_timestamp.inspect}, mode: #{@mode.inspect},"\
      " created_on: #{@created_on.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
