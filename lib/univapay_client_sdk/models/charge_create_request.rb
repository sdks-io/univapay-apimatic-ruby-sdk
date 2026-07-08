# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Request payload for creating a charge.
  class ChargeCreateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Transaction token identifier.
    # @return [UUID | String]
    attr_accessor :transaction_token_id

    # The charge amount.
    # @return [Integer]
    attr_accessor :amount

    # ISO-4217 currency code.
    # @return [String]
    attr_accessor :currency

    # If false, creates an Authorization only (Hold).
    # @return [TrueClass | FalseClass]
    attr_accessor :capture

    # Auto-capture date for cards, or payment deadline for Konbini/Bank. Note:
    # Time specification is ignored for 7-Eleven, Seicomart, and PayEasy.
    # @return [DateTime]
    attr_accessor :capture_at

    # Unique transaction ID for the merchant.  Required/used by specific brands
    # like we_chat, we_chat_mpm, and we_chat_online.
    # @return [String]
    attr_accessor :merchant_transaction_id

    # A free-form dictionary for custom metadata.
    # @return [GenericMetadata]
    attr_accessor :metadata

    # Charge Create Request Client Metadata schema.
    # @return [ChargeCreateRequestClientMetadata]
    attr_accessor :client_metadata

    # Charge Create Request Redirect schema.
    # @return [ChargeCreateRequestRedirect]
    attr_accessor :redirect

    # Charge Create Request Three Ds schema.
    # @return [ChargeCreateRequestThreeDs]
    attr_accessor :three_ds

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['transaction_token_id'] = 'transaction_token_id'
      @_hash['amount'] = 'amount'
      @_hash['currency'] = 'currency'
      @_hash['capture'] = 'capture'
      @_hash['capture_at'] = 'capture_at'
      @_hash['merchant_transaction_id'] = 'merchant_transaction_id'
      @_hash['metadata'] = 'metadata'
      @_hash['client_metadata'] = 'client_metadata'
      @_hash['redirect'] = 'redirect'
      @_hash['three_ds'] = 'three_ds'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        capture
        capture_at
        merchant_transaction_id
        metadata
        client_metadata
        redirect
        three_ds
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(transaction_token_id:, amount:, currency: 'JPY',
                   capture: true, capture_at: SKIP,
                   merchant_transaction_id: SKIP, metadata: SKIP,
                   client_metadata: SKIP, redirect: SKIP, three_ds: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @transaction_token_id = transaction_token_id
      @amount = amount
      @currency = currency
      @capture = capture unless capture == SKIP
      @capture_at = capture_at unless capture_at == SKIP
      @merchant_transaction_id = merchant_transaction_id unless merchant_transaction_id == SKIP
      @metadata = metadata unless metadata == SKIP
      @client_metadata = client_metadata unless client_metadata == SKIP
      @redirect = redirect unless redirect == SKIP
      @three_ds = three_ds unless three_ds == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      transaction_token_id =
        hash.key?('transaction_token_id') ? hash['transaction_token_id'] : nil
      amount = hash.key?('amount') ? hash['amount'] : nil
      currency = hash['currency'] ||= 'JPY'
      capture = hash['capture'] ||= true
      capture_at = if hash.key?('capture_at')
                     (DateTimeHelper.from_rfc3339(hash['capture_at']) if hash['capture_at'])
                   else
                     SKIP
                   end
      merchant_transaction_id =
        hash.key?('merchant_transaction_id') ? hash['merchant_transaction_id'] : SKIP
      metadata = GenericMetadata.from_hash(hash['metadata']) if hash['metadata']
      client_metadata = ChargeCreateRequestClientMetadata.from_hash(hash['client_metadata']) if
        hash['client_metadata']
      redirect = ChargeCreateRequestRedirect.from_hash(hash['redirect']) if hash['redirect']
      three_ds = ChargeCreateRequestThreeDs.from_hash(hash['three_ds']) if hash['three_ds']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      ChargeCreateRequest.new(transaction_token_id: transaction_token_id,
                              amount: amount,
                              currency: currency,
                              capture: capture,
                              capture_at: capture_at,
                              merchant_transaction_id: merchant_transaction_id,
                              metadata: metadata,
                              client_metadata: client_metadata,
                              redirect: redirect,
                              three_ds: three_ds,
                              additional_properties: additional_properties)
    end

    def to_custom_capture_at
      DateTimeHelper.to_rfc3339(capture_at)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} transaction_token_id: #{@transaction_token_id}, amount: #{@amount},"\
      " currency: #{@currency}, capture: #{@capture}, capture_at: #{@capture_at},"\
      " merchant_transaction_id: #{@merchant_transaction_id}, metadata: #{@metadata},"\
      " client_metadata: #{@client_metadata}, redirect: #{@redirect}, three_ds: #{@three_ds},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} transaction_token_id: #{@transaction_token_id.inspect}, amount:"\
      " #{@amount.inspect}, currency: #{@currency.inspect}, capture: #{@capture.inspect},"\
      " capture_at: #{@capture_at.inspect}, merchant_transaction_id:"\
      " #{@merchant_transaction_id.inspect}, metadata: #{@metadata.inspect}, client_metadata:"\
      " #{@client_metadata.inspect}, redirect: #{@redirect.inspect}, three_ds:"\
      " #{@three_ds.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
