# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Charge resource returned by the payments API.
  class Charge < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier.
    # @return [UUID | String]
    attr_accessor :id

    # Store identifier.
    # @return [UUID | String]
    attr_accessor :store_id

    # Transaction token identifier.
    # @return [UUID | String]
    attr_accessor :transaction_token_id

    # Charge Transaction Token Type schema.
    # @return [ChargeTransactionTokenType]
    attr_accessor :transaction_token_type

    # Subscription identifier.
    # @return [UUID | String]
    attr_accessor :subscription_id

    # Merchant-defined transaction identifier.
    # @return [String]
    attr_accessor :merchant_transaction_id

    # Requested amount in the smallest currency unit.
    # @return [Integer]
    attr_accessor :requested_amount

    # Requested ISO-4217 currency code.
    # @return [String]
    attr_accessor :requested_currency

    # Requested amount formatted for display.
    # @return [Float]
    attr_accessor :requested_amount_formatted

    # Charged amount in the smallest currency unit.
    # @return [Integer]
    attr_accessor :charged_amount

    # Charged ISO-4217 currency code.
    # @return [String]
    attr_accessor :charged_currency

    # Charged amount formatted for display.
    # @return [Float]
    attr_accessor :charged_amount_formatted

    # Fee amount in the smallest currency unit.
    # @return [Integer]
    attr_accessor :fee_amount

    # Fee ISO-4217 currency code.
    # @return [String]
    attr_accessor :fee_currency

    # Fee amount formatted for display.
    # @return [Float]
    attr_accessor :fee_amount_formatted

    # Whether only direct currency processing is allowed.
    # @return [TrueClass | FalseClass]
    attr_accessor :only_direct_currency

    # Timestamp when capture should occur.
    # @return [DateTime]
    attr_accessor :capture_at

    # Billing descriptor.
    # @return [String]
    attr_accessor :descriptor

    # Billing descriptor phone number.
    # @return [String]
    attr_accessor :descriptor_phone_number

    # Charge Status schema.
    # @return [ChargeStatus]
    attr_accessor :status

    # Payment error details, or null if successful.
    # @return [PaymentError]
    attr_accessor :error

    # A free-form dictionary for custom metadata.
    # @return [GenericMetadata]
    attr_accessor :metadata

    # Charge Mode schema.
    # @return [ChargeMode]
    attr_accessor :mode

    # Timestamp when the resource was created.
    # @return [DateTime]
    attr_accessor :created_on

    # Merchant display name.
    # @return [String]
    attr_accessor :merchant_name

    # Store display name.
    # @return [String]
    attr_accessor :store_name

    # Charge Redirect schema.
    # @return [ChargeRedirect]
    attr_accessor :redirect

    # Charge Three Ds schema.
    # @return [ChargeThreeDs]
    attr_accessor :three_ds

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['store_id'] = 'store_id'
      @_hash['transaction_token_id'] = 'transaction_token_id'
      @_hash['transaction_token_type'] = 'transaction_token_type'
      @_hash['subscription_id'] = 'subscription_id'
      @_hash['merchant_transaction_id'] = 'merchant_transaction_id'
      @_hash['requested_amount'] = 'requested_amount'
      @_hash['requested_currency'] = 'requested_currency'
      @_hash['requested_amount_formatted'] = 'requested_amount_formatted'
      @_hash['charged_amount'] = 'charged_amount'
      @_hash['charged_currency'] = 'charged_currency'
      @_hash['charged_amount_formatted'] = 'charged_amount_formatted'
      @_hash['fee_amount'] = 'fee_amount'
      @_hash['fee_currency'] = 'fee_currency'
      @_hash['fee_amount_formatted'] = 'fee_amount_formatted'
      @_hash['only_direct_currency'] = 'only_direct_currency'
      @_hash['capture_at'] = 'capture_at'
      @_hash['descriptor'] = 'descriptor'
      @_hash['descriptor_phone_number'] = 'descriptor_phone_number'
      @_hash['status'] = 'status'
      @_hash['error'] = 'error'
      @_hash['metadata'] = 'metadata'
      @_hash['mode'] = 'mode'
      @_hash['created_on'] = 'created_on'
      @_hash['merchant_name'] = 'merchant_name'
      @_hash['store_name'] = 'store_name'
      @_hash['redirect'] = 'redirect'
      @_hash['three_ds'] = 'three_ds'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        store_id
        transaction_token_id
        transaction_token_type
        subscription_id
        merchant_transaction_id
        requested_amount
        requested_currency
        requested_amount_formatted
        charged_amount
        charged_currency
        charged_amount_formatted
        fee_amount
        fee_currency
        fee_amount_formatted
        only_direct_currency
        capture_at
        descriptor
        descriptor_phone_number
        status
        error
        metadata
        mode
        created_on
        merchant_name
        store_name
        redirect
        three_ds
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        subscription_id
        merchant_transaction_id
        charged_amount
        charged_currency
        charged_amount_formatted
        fee_amount
        fee_currency
        fee_amount_formatted
        capture_at
        descriptor
        descriptor_phone_number
        error
      ]
    end

    def initialize(id: SKIP, store_id: SKIP, transaction_token_id: SKIP,
                   transaction_token_type: SKIP, subscription_id: SKIP,
                   merchant_transaction_id: SKIP, requested_amount: SKIP,
                   requested_currency: SKIP, requested_amount_formatted: SKIP,
                   charged_amount: SKIP, charged_currency: SKIP,
                   charged_amount_formatted: SKIP, fee_amount: SKIP,
                   fee_currency: SKIP, fee_amount_formatted: SKIP,
                   only_direct_currency: SKIP, capture_at: SKIP,
                   descriptor: SKIP, descriptor_phone_number: SKIP,
                   status: SKIP, error: SKIP, metadata: SKIP, mode: SKIP,
                   created_on: SKIP, merchant_name: SKIP, store_name: SKIP,
                   redirect: SKIP, three_ds: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @store_id = store_id unless store_id == SKIP
      @transaction_token_id = transaction_token_id unless transaction_token_id == SKIP
      @transaction_token_type = transaction_token_type unless transaction_token_type == SKIP
      @subscription_id = subscription_id unless subscription_id == SKIP
      @merchant_transaction_id = merchant_transaction_id unless merchant_transaction_id == SKIP
      @requested_amount = requested_amount unless requested_amount == SKIP
      @requested_currency = requested_currency unless requested_currency == SKIP
      unless requested_amount_formatted == SKIP
        @requested_amount_formatted =
          requested_amount_formatted
      end
      @charged_amount = charged_amount unless charged_amount == SKIP
      @charged_currency = charged_currency unless charged_currency == SKIP
      @charged_amount_formatted = charged_amount_formatted unless charged_amount_formatted == SKIP
      @fee_amount = fee_amount unless fee_amount == SKIP
      @fee_currency = fee_currency unless fee_currency == SKIP
      @fee_amount_formatted = fee_amount_formatted unless fee_amount_formatted == SKIP
      @only_direct_currency = only_direct_currency unless only_direct_currency == SKIP
      @capture_at = capture_at unless capture_at == SKIP
      @descriptor = descriptor unless descriptor == SKIP
      @descriptor_phone_number = descriptor_phone_number unless descriptor_phone_number == SKIP
      @status = status unless status == SKIP
      @error = error unless error == SKIP
      @metadata = metadata unless metadata == SKIP
      @mode = mode unless mode == SKIP
      @created_on = created_on unless created_on == SKIP
      @merchant_name = merchant_name unless merchant_name == SKIP
      @store_name = store_name unless store_name == SKIP
      @redirect = redirect unless redirect == SKIP
      @three_ds = three_ds unless three_ds == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      store_id = hash.key?('store_id') ? hash['store_id'] : SKIP
      transaction_token_id =
        hash.key?('transaction_token_id') ? hash['transaction_token_id'] : SKIP
      transaction_token_type =
        hash.key?('transaction_token_type') ? hash['transaction_token_type'] : SKIP
      subscription_id =
        hash.key?('subscription_id') ? hash['subscription_id'] : SKIP
      merchant_transaction_id =
        hash.key?('merchant_transaction_id') ? hash['merchant_transaction_id'] : SKIP
      requested_amount =
        hash.key?('requested_amount') ? hash['requested_amount'] : SKIP
      requested_currency =
        hash.key?('requested_currency') ? hash['requested_currency'] : SKIP
      requested_amount_formatted =
        hash.key?('requested_amount_formatted') ? hash['requested_amount_formatted'] : SKIP
      charged_amount =
        hash.key?('charged_amount') ? hash['charged_amount'] : SKIP
      charged_currency =
        hash.key?('charged_currency') ? hash['charged_currency'] : SKIP
      charged_amount_formatted =
        hash.key?('charged_amount_formatted') ? hash['charged_amount_formatted'] : SKIP
      fee_amount = hash.key?('fee_amount') ? hash['fee_amount'] : SKIP
      fee_currency = hash.key?('fee_currency') ? hash['fee_currency'] : SKIP
      fee_amount_formatted =
        hash.key?('fee_amount_formatted') ? hash['fee_amount_formatted'] : SKIP
      only_direct_currency =
        hash.key?('only_direct_currency') ? hash['only_direct_currency'] : SKIP
      capture_at = if hash.key?('capture_at')
                     (DateTimeHelper.from_rfc3339(hash['capture_at']) if hash['capture_at'])
                   else
                     SKIP
                   end
      descriptor = hash.key?('descriptor') ? hash['descriptor'] : SKIP
      descriptor_phone_number =
        hash.key?('descriptor_phone_number') ? hash['descriptor_phone_number'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      error = PaymentError.from_hash(hash['error']) if hash['error']
      metadata = GenericMetadata.from_hash(hash['metadata']) if hash['metadata']
      mode = hash.key?('mode') ? hash['mode'] : SKIP
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end
      merchant_name = hash.key?('merchant_name') ? hash['merchant_name'] : SKIP
      store_name = hash.key?('store_name') ? hash['store_name'] : SKIP
      redirect = ChargeRedirect.from_hash(hash['redirect']) if hash['redirect']
      three_ds = ChargeThreeDs.from_hash(hash['three_ds']) if hash['three_ds']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      Charge.new(id: id,
                 store_id: store_id,
                 transaction_token_id: transaction_token_id,
                 transaction_token_type: transaction_token_type,
                 subscription_id: subscription_id,
                 merchant_transaction_id: merchant_transaction_id,
                 requested_amount: requested_amount,
                 requested_currency: requested_currency,
                 requested_amount_formatted: requested_amount_formatted,
                 charged_amount: charged_amount,
                 charged_currency: charged_currency,
                 charged_amount_formatted: charged_amount_formatted,
                 fee_amount: fee_amount,
                 fee_currency: fee_currency,
                 fee_amount_formatted: fee_amount_formatted,
                 only_direct_currency: only_direct_currency,
                 capture_at: capture_at,
                 descriptor: descriptor,
                 descriptor_phone_number: descriptor_phone_number,
                 status: status,
                 error: error,
                 metadata: metadata,
                 mode: mode,
                 created_on: created_on,
                 merchant_name: merchant_name,
                 store_name: store_name,
                 redirect: redirect,
                 three_ds: three_ds,
                 additional_properties: additional_properties)
    end

    def to_custom_capture_at
      DateTimeHelper.to_rfc3339(capture_at)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Validates an instance of the object from a given value.
    # @param [Charge | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, store_id: #{@store_id}, transaction_token_id:"\
      " #{@transaction_token_id}, transaction_token_type: #{@transaction_token_type},"\
      " subscription_id: #{@subscription_id}, merchant_transaction_id:"\
      " #{@merchant_transaction_id}, requested_amount: #{@requested_amount}, requested_currency:"\
      " #{@requested_currency}, requested_amount_formatted: #{@requested_amount_formatted},"\
      " charged_amount: #{@charged_amount}, charged_currency: #{@charged_currency},"\
      " charged_amount_formatted: #{@charged_amount_formatted}, fee_amount: #{@fee_amount},"\
      " fee_currency: #{@fee_currency}, fee_amount_formatted: #{@fee_amount_formatted},"\
      " only_direct_currency: #{@only_direct_currency}, capture_at: #{@capture_at}, descriptor:"\
      " #{@descriptor}, descriptor_phone_number: #{@descriptor_phone_number}, status: #{@status},"\
      " error: #{@error}, metadata: #{@metadata}, mode: #{@mode}, created_on: #{@created_on},"\
      " merchant_name: #{@merchant_name}, store_name: #{@store_name}, redirect: #{@redirect},"\
      " three_ds: #{@three_ds}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, store_id: #{@store_id.inspect}, transaction_token_id:"\
      " #{@transaction_token_id.inspect}, transaction_token_type:"\
      " #{@transaction_token_type.inspect}, subscription_id: #{@subscription_id.inspect},"\
      " merchant_transaction_id: #{@merchant_transaction_id.inspect}, requested_amount:"\
      " #{@requested_amount.inspect}, requested_currency: #{@requested_currency.inspect},"\
      " requested_amount_formatted: #{@requested_amount_formatted.inspect}, charged_amount:"\
      " #{@charged_amount.inspect}, charged_currency: #{@charged_currency.inspect},"\
      " charged_amount_formatted: #{@charged_amount_formatted.inspect}, fee_amount:"\
      " #{@fee_amount.inspect}, fee_currency: #{@fee_currency.inspect}, fee_amount_formatted:"\
      " #{@fee_amount_formatted.inspect}, only_direct_currency: #{@only_direct_currency.inspect},"\
      " capture_at: #{@capture_at.inspect}, descriptor: #{@descriptor.inspect},"\
      " descriptor_phone_number: #{@descriptor_phone_number.inspect}, status: #{@status.inspect},"\
      " error: #{@error.inspect}, metadata: #{@metadata.inspect}, mode: #{@mode.inspect},"\
      " created_on: #{@created_on.inspect}, merchant_name: #{@merchant_name.inspect}, store_name:"\
      " #{@store_name.inspect}, redirect: #{@redirect.inspect}, three_ds: #{@three_ds.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
