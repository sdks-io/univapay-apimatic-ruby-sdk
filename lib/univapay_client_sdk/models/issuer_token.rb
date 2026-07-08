# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Issuer token or bank transfer instruction payload.
  class IssuerToken < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # The type of payment method for the charge.
    # @return [IssuerTokenPaymentType]
    attr_accessor :payment_type

    # (Online) The token or payment URL provided by the payment provider for the
    # consumer to execute.
    # @return [String]
    attr_accessor :issuer_token

    # (Online) How the client should execute the token.  - `sdk` / `app`: Direct
    # use in native app environments/SDKs. - `web`: Direct use in special
    # extended browser environments. - `http_get` / `http_post`: Execute
    # directly in a new browser window or iframe.
    # @return [IssuerTokenCallMethod]
    attr_accessor :call_method

    # Key-value pairs required to complete the payment action, or null if not
    # applicable. Used when `call_method` is `http_post`. When present, this
    # JSON must be converted by the client to match the expected `content_type`
    # (e.g., transformed into an `application/x-www-form-urlencoded` string)
    # before sending the POST request.
    # @return [IssuerTokenPayload]
    attr_accessor :payload

    # (Bank Transfer) Unique ID of the bank account issued by the connected
    # system.
    # @return [String]
    attr_accessor :account_id

    # (Bank Transfer) Branch code.
    # @return [String]
    attr_accessor :branch_code

    # (Bank Transfer) Branch name.
    # @return [String]
    attr_accessor :branch_name

    # (Bank Transfer) Account holder name.
    # @return [String]
    attr_accessor :account_holder_name

    # (Bank Transfer) Account number.
    # @return [String]
    attr_accessor :account_number

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_type'] = 'payment_type'
      @_hash['issuer_token'] = 'issuer_token'
      @_hash['call_method'] = 'call_method'
      @_hash['payload'] = 'payload'
      @_hash['account_id'] = 'account_id'
      @_hash['branch_code'] = 'branch_code'
      @_hash['branch_name'] = 'branch_name'
      @_hash['account_holder_name'] = 'account_holder_name'
      @_hash['account_number'] = 'account_number'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        issuer_token
        call_method
        payload
        account_id
        branch_code
        branch_name
        account_holder_name
        account_number
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        issuer_token
        call_method
        payload
        account_id
        branch_code
        branch_name
        account_holder_name
        account_number
      ]
    end

    def initialize(payment_type:, issuer_token: SKIP, call_method: SKIP,
                   payload: SKIP, account_id: SKIP, branch_code: SKIP,
                   branch_name: SKIP, account_holder_name: SKIP,
                   account_number: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @payment_type = payment_type
      @issuer_token = issuer_token unless issuer_token == SKIP
      @call_method = call_method unless call_method == SKIP
      @payload = payload unless payload == SKIP
      @account_id = account_id unless account_id == SKIP
      @branch_code = branch_code unless branch_code == SKIP
      @branch_name = branch_name unless branch_name == SKIP
      @account_holder_name = account_holder_name unless account_holder_name == SKIP
      @account_number = account_number unless account_number == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : nil
      issuer_token = hash.key?('issuer_token') ? hash['issuer_token'] : SKIP
      call_method = hash.key?('call_method') ? hash['call_method'] : SKIP
      payload = IssuerTokenPayload.from_hash(hash['payload']) if hash['payload']
      account_id = hash.key?('account_id') ? hash['account_id'] : SKIP
      branch_code = hash.key?('branch_code') ? hash['branch_code'] : SKIP
      branch_name = hash.key?('branch_name') ? hash['branch_name'] : SKIP
      account_holder_name =
        hash.key?('account_holder_name') ? hash['account_holder_name'] : SKIP
      account_number =
        hash.key?('account_number') ? hash['account_number'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      IssuerToken.new(payment_type: payment_type,
                      issuer_token: issuer_token,
                      call_method: call_method,
                      payload: payload,
                      account_id: account_id,
                      branch_code: branch_code,
                      branch_name: branch_name,
                      account_holder_name: account_holder_name,
                      account_number: account_number,
                      additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_type: #{@payment_type}, issuer_token: #{@issuer_token},"\
      " call_method: #{@call_method}, payload: #{@payload}, account_id: #{@account_id},"\
      " branch_code: #{@branch_code}, branch_name: #{@branch_name}, account_holder_name:"\
      " #{@account_holder_name}, account_number: #{@account_number}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_type: #{@payment_type.inspect}, issuer_token:"\
      " #{@issuer_token.inspect}, call_method: #{@call_method.inspect}, payload:"\
      " #{@payload.inspect}, account_id: #{@account_id.inspect}, branch_code:"\
      " #{@branch_code.inspect}, branch_name: #{@branch_name.inspect}, account_holder_name:"\
      " #{@account_holder_name.inspect}, account_number: #{@account_number.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
