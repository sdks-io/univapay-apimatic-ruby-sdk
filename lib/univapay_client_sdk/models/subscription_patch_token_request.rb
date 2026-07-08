# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request body for updating the payment method (transaction token) of a
  # subscription. The new token must belong to the same store, be active, and
  # match the subscription's mode.
  class SubscriptionPatchTokenRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The ID of the new transaction token to use for future subscription
    # payments. Must be a recurring or subscription-type token for the same
    # store.
    # @return [UUID | String]
    attr_accessor :transaction_token_id

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_token_id'] = 'transaction_token_id'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(transaction_token_id:, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @transaction_token_id = transaction_token_id
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_token_id =
        hash.key?('transaction_token_id') ? hash['transaction_token_id'] : nil

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionPatchTokenRequest.new(transaction_token_id: transaction_token_id,
                                        additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} transaction_token_id: #{@transaction_token_id}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} transaction_token_id: #{@transaction_token_id.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
