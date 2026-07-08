# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # TransactionTokenCreateRequest Model.
  class TransactionTokenCreateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Transaction Token Create Request Payment Type schema.
    # @return [TransactionTokenCreateRequestPaymentType]
    attr_accessor :payment_type

    # Transaction Token Create Request Type schema.
    # @return [TransactionTokenCreateRequestType]
    attr_accessor :type

    # Customer email address.
    # @return [String]
    attr_accessor :email

    # Usage limit applied to the token.
    # @return [String]
    attr_accessor :usage_limit

    # Consumer's IPv4 address. **Required** when `data.brand` is
    # `we_chat_online` and `data.call_method` is `web` or `http_get`.
    # @return [String]
    attr_accessor :ip_address

    # A free-form dictionary for custom metadata.
    # @return [TransactionTokenCreateRequestMetadata]
    attr_accessor :metadata

    # Transaction Token Create Request Data schema.
    # @return [Object]
    attr_accessor :data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['payment_type'] = 'payment_type'
      @_hash['type'] = 'type'
      @_hash['email'] = 'email'
      @_hash['usage_limit'] = 'usage_limit'
      @_hash['ip_address'] = 'ip_address'
      @_hash['metadata'] = 'metadata'
      @_hash['data'] = 'data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        email
        usage_limit
        ip_address
        metadata
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(payment_type:, type:, data:, email: SKIP, usage_limit: SKIP,
                   ip_address: SKIP, metadata: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @payment_type = payment_type
      @type = type
      @email = email unless email == SKIP
      @usage_limit = usage_limit unless usage_limit == SKIP
      @ip_address = ip_address unless ip_address == SKIP
      @metadata = metadata unless metadata == SKIP
      @data = data
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : nil
      type = hash.key?('type') ? hash['type'] : nil
      data = hash.key?('data') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:TransactionTokenCreateRequestData), hash['data']
      ) : nil
      email = hash.key?('email') ? hash['email'] : SKIP
      usage_limit = hash.key?('usage_limit') ? hash['usage_limit'] : SKIP
      ip_address = hash.key?('ip_address') ? hash['ip_address'] : SKIP
      metadata = TransactionTokenCreateRequestMetadata.from_hash(hash['metadata']) if
        hash['metadata']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TransactionTokenCreateRequest.new(payment_type: payment_type,
                                        type: type,
                                        data: data,
                                        email: email,
                                        usage_limit: usage_limit,
                                        ip_address: ip_address,
                                        metadata: metadata,
                                        additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TransactionTokenCreateRequest | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.payment_type,
                                ->(val) { TransactionTokenCreateRequestPaymentType.validate(val) }) and
            APIHelper.valid_type?(value.type,
                                  ->(val) { TransactionTokenCreateRequestType.validate(val) }) and
            UnionTypeLookUp.get(:TransactionTokenCreateRequestData)
                           .validate(value.data)
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['payment_type'],
                              ->(val) { TransactionTokenCreateRequestPaymentType.validate(val) }) and
          APIHelper.valid_type?(value['type'],
                                ->(val) { TransactionTokenCreateRequestType.validate(val) }) and
          UnionTypeLookUp.get(:TransactionTokenCreateRequestData)
                         .validate(value['data'])
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_type: #{@payment_type}, type: #{@type}, email: #{@email},"\
      " usage_limit: #{@usage_limit}, ip_address: #{@ip_address}, metadata: #{@metadata}, data:"\
      " #{@data}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} payment_type: #{@payment_type.inspect}, type: #{@type.inspect}, email:"\
      " #{@email.inspect}, usage_limit: #{@usage_limit.inspect}, ip_address:"\
      " #{@ip_address.inspect}, metadata: #{@metadata.inspect}, data: #{@data.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
