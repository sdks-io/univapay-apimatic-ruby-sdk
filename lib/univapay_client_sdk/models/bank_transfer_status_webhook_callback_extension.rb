# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Bank-transfer-specific webhook payload extension.
  class BankTransferStatusWebhookCallbackExtension < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Data payload for `bank_transfer_status_updated` webhook events. Contains
    # the bank transfer extension fields inlined alongside amount and metadata.
    # @return [BankTransferStatusData]
    attr_accessor :data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['data'] = 'data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        data
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(data: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @data = data unless data == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      data = BankTransferStatusData.from_hash(hash['data']) if hash['data']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      BankTransferStatusWebhookCallbackExtension.new(data: data,
                                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} data: #{@data}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} data: #{@data.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
