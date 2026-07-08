# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # 3-D Secure issuer token payload.
  class ThreeDsIssuerToken < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Only 'card' is supported for 3-D Secure issuer tokens.
    # @return [String]
    attr_reader :payment_type

    # The 3-D Secure authentication URL to which the client must send the
    # request.
    # @return [String]
    attr_accessor :issuer_token

    # Execution method. Currently, only 'http_post' is supported.
    # @return [String]
    attr_reader :call_method

    # Key-value pairs required to complete the payment action, or null if not
    # applicable. Used when `call_method` is `http_post`. When present, this
    # JSON must be converted by the client to match the expected `content_type`
    # (e.g., transformed into an `application/x-www-form-urlencoded` string)
    # before sending the POST request.
    # @return [IssuerTokenPayload]
    attr_accessor :payload

    # The expected content type of the payload required by the card issuer's
    # endpoint  (e.g., 'application/x-www-form-urlencoded; charset=UTF-8').
    # @return [String]
    attr_accessor :content_type

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_type'] = 'payment_type'
      @_hash['issuer_token'] = 'issuer_token'
      @_hash['call_method'] = 'call_method'
      @_hash['payload'] = 'payload'
      @_hash['content_type'] = 'content_type'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        payload
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        payload
      ]
    end

    def initialize(issuer_token:, content_type:, payload: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @payment_type = 'card'
      @issuer_token = issuer_token
      @call_method = 'http_post'
      @payload = payload unless payload == SKIP
      @content_type = content_type
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      issuer_token = hash.key?('issuer_token') ? hash['issuer_token'] : nil
      content_type = hash.key?('content_type') ? hash['content_type'] : nil
      payload = IssuerTokenPayload.from_hash(hash['payload']) if hash['payload']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      ThreeDsIssuerToken.new(issuer_token: issuer_token,
                             content_type: content_type,
                             payload: payload,
                             additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_type: #{@payment_type}, issuer_token: #{@issuer_token},"\
      " call_method: #{@call_method}, payload: #{@payload}, content_type: #{@content_type},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_type: #{@payment_type.inspect}, issuer_token:"\
      " #{@issuer_token.inspect}, call_method: #{@call_method.inspect}, payload:"\
      " #{@payload.inspect}, content_type: #{@content_type.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
