# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Response Bank Transfer Data schema.
  class TokenResponseBankTransferData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The bank brand identifier (e.g., 'aozora_bank').
    # @return [String]
    attr_accessor :brand

    # ISO 8601 duration format (e.g., 'PT168H').
    # @return [String]
    attr_accessor :expiration_period

    # Time shift applied to the expiration, typically pushing it to the end of
    # the day  in a specific timezone (e.g., '23:59:59+09:00').
    # @return [String]
    attr_accessor :expiration_time_shift

    # Bank code value.
    # @return [String]
    attr_accessor :bank_code

    # Bank name value.
    # @return [String]
    attr_accessor :bank_name

    # Bank branch code.
    # @return [String]
    attr_accessor :branch_code

    # Bank branch name.
    # @return [String]
    attr_accessor :branch_name

    # Bank account number.
    # @return [String]
    attr_accessor :account_number

    # Bank account holder name.
    # @return [String]
    attr_accessor :account_holder_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['brand'] = 'brand'
      @_hash['expiration_period'] = 'expiration_period'
      @_hash['expiration_time_shift'] = 'expiration_time_shift'
      @_hash['bank_code'] = 'bank_code'
      @_hash['bank_name'] = 'bank_name'
      @_hash['branch_code'] = 'branch_code'
      @_hash['branch_name'] = 'branch_name'
      @_hash['account_number'] = 'account_number'
      @_hash['account_holder_name'] = 'account_holder_name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        brand
        expiration_period
        expiration_time_shift
        bank_code
        bank_name
        branch_code
        branch_name
        account_number
        account_holder_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        bank_code
        bank_name
        branch_code
        branch_name
        account_number
        account_holder_name
      ]
    end

    def initialize(brand: SKIP, expiration_period: SKIP,
                   expiration_time_shift: SKIP, bank_code: SKIP,
                   bank_name: SKIP, branch_code: SKIP, branch_name: SKIP,
                   account_number: SKIP, account_holder_name: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @brand = brand unless brand == SKIP
      @expiration_period = expiration_period unless expiration_period == SKIP
      @expiration_time_shift = expiration_time_shift unless expiration_time_shift == SKIP
      @bank_code = bank_code unless bank_code == SKIP
      @bank_name = bank_name unless bank_name == SKIP
      @branch_code = branch_code unless branch_code == SKIP
      @branch_name = branch_name unless branch_name == SKIP
      @account_number = account_number unless account_number == SKIP
      @account_holder_name = account_holder_name unless account_holder_name == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      brand = hash.key?('brand') ? hash['brand'] : SKIP
      expiration_period =
        hash.key?('expiration_period') ? hash['expiration_period'] : SKIP
      expiration_time_shift =
        hash.key?('expiration_time_shift') ? hash['expiration_time_shift'] : SKIP
      bank_code = hash.key?('bank_code') ? hash['bank_code'] : SKIP
      bank_name = hash.key?('bank_name') ? hash['bank_name'] : SKIP
      branch_code = hash.key?('branch_code') ? hash['branch_code'] : SKIP
      branch_name = hash.key?('branch_name') ? hash['branch_name'] : SKIP
      account_number =
        hash.key?('account_number') ? hash['account_number'] : SKIP
      account_holder_name =
        hash.key?('account_holder_name') ? hash['account_holder_name'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenResponseBankTransferData.new(brand: brand,
                                        expiration_period: expiration_period,
                                        expiration_time_shift: expiration_time_shift,
                                        bank_code: bank_code,
                                        bank_name: bank_name,
                                        branch_code: branch_code,
                                        branch_name: branch_name,
                                        account_number: account_number,
                                        account_holder_name: account_holder_name,
                                        additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenResponseBankTransferData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} brand: #{@brand}, expiration_period: #{@expiration_period},"\
      " expiration_time_shift: #{@expiration_time_shift}, bank_code: #{@bank_code}, bank_name:"\
      " #{@bank_name}, branch_code: #{@branch_code}, branch_name: #{@branch_name}, account_number:"\
      " #{@account_number}, account_holder_name: #{@account_holder_name}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} brand: #{@brand.inspect}, expiration_period: #{@expiration_period.inspect},"\
      " expiration_time_shift: #{@expiration_time_shift.inspect}, bank_code:"\
      " #{@bank_code.inspect}, bank_name: #{@bank_name.inspect}, branch_code:"\
      " #{@branch_code.inspect}, branch_name: #{@branch_name.inspect}, account_number:"\
      " #{@account_number.inspect}, account_holder_name: #{@account_holder_name.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
