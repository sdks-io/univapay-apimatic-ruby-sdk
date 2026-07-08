# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Result payload returned by the customs declaration formatter.
  class CustomsDeclarationWebhookResult < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Customs authority that approved the declaration.
    # @return [String]
    attr_accessor :approving_authority

    # Gateway trade identifier.
    # @return [String]
    attr_accessor :trade_id

    # Gateway transaction identifier for customs.
    # @return [String]
    attr_accessor :transaction_id

    # Gateway charge transaction identifier linked to the declaration.
    # @return [String]
    attr_accessor :charge_transaction_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['approving_authority'] = 'approving_authority'
      @_hash['trade_id'] = 'trade_id'
      @_hash['transaction_id'] = 'transaction_id'
      @_hash['charge_transaction_id'] = 'charge_transaction_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        approving_authority
        trade_id
        transaction_id
        charge_transaction_id
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        approving_authority
        trade_id
        transaction_id
        charge_transaction_id
      ]
    end

    def initialize(approving_authority: SKIP, trade_id: SKIP,
                   transaction_id: SKIP, charge_transaction_id: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @approving_authority = approving_authority unless approving_authority == SKIP
      @trade_id = trade_id unless trade_id == SKIP
      @transaction_id = transaction_id unless transaction_id == SKIP
      @charge_transaction_id = charge_transaction_id unless charge_transaction_id == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      approving_authority =
        hash.key?('approving_authority') ? hash['approving_authority'] : SKIP
      trade_id = hash.key?('trade_id') ? hash['trade_id'] : SKIP
      transaction_id =
        hash.key?('transaction_id') ? hash['transaction_id'] : SKIP
      charge_transaction_id =
        hash.key?('charge_transaction_id') ? hash['charge_transaction_id'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CustomsDeclarationWebhookResult.new(approving_authority: approving_authority,
                                          trade_id: trade_id,
                                          transaction_id: transaction_id,
                                          charge_transaction_id: charge_transaction_id,
                                          additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CustomsDeclarationWebhookResult | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} approving_authority: #{@approving_authority}, trade_id: #{@trade_id},"\
      " transaction_id: #{@transaction_id}, charge_transaction_id: #{@charge_transaction_id},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} approving_authority: #{@approving_authority.inspect}, trade_id:"\
      " #{@trade_id.inspect}, transaction_id: #{@transaction_id.inspect}, charge_transaction_id:"\
      " #{@charge_transaction_id.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
