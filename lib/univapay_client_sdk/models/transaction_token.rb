# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Stored transaction token resource.
  class TransactionToken < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier.
    # @return [UUID | String]
    attr_accessor :id

    # Store identifier.
    # @return [UUID | String]
    attr_accessor :store_id

    # Customer email address.
    # @return [String]
    attr_accessor :email

    # Transaction Token Payment Type schema.
    # @return [TransactionTokenPaymentType]
    attr_accessor :payment_type

    # Whether the resource is active.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # Transaction Token Mode schema.
    # @return [TransactionTokenMode]
    attr_accessor :mode

    # Transaction Token Type schema.
    # @return [TransactionTokenType]
    attr_accessor :type

    # Usage limit applied to the token.
    # @return [String]
    attr_accessor :usage_limit

    # Whether the token has been confirmed.
    # @return [TrueClass | FalseClass]
    attr_accessor :confirmed

    # Arbitrary key-value metadata.
    # @return [Hash[String, Object]]
    attr_accessor :metadata

    # Timestamp when the resource was created.
    # @return [DateTime]
    attr_accessor :created_on

    # Timestamp when the resource was last updated.
    # @return [DateTime]
    attr_accessor :updated_on

    # Timestamp when the token was last used.
    # @return [DateTime]
    attr_accessor :last_used_on

    # Transaction token data payload. The actual structure depends on
    # `payment_type` — card, konbini, online (QR / 3DS), or bank transfer.
    # @return [Object]
    attr_accessor :data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['store_id'] = 'store_id'
      @_hash['email'] = 'email'
      @_hash['payment_type'] = 'payment_type'
      @_hash['active'] = 'active'
      @_hash['mode'] = 'mode'
      @_hash['type'] = 'type'
      @_hash['usage_limit'] = 'usage_limit'
      @_hash['confirmed'] = 'confirmed'
      @_hash['metadata'] = 'metadata'
      @_hash['created_on'] = 'created_on'
      @_hash['updated_on'] = 'updated_on'
      @_hash['last_used_on'] = 'last_used_on'
      @_hash['data'] = 'data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        store_id
        email
        payment_type
        active
        mode
        type
        usage_limit
        confirmed
        metadata
        created_on
        updated_on
        last_used_on
        data
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        email
        usage_limit
        confirmed
        last_used_on
      ]
    end

    def initialize(id: SKIP, store_id: SKIP, email: SKIP, payment_type: SKIP,
                   active: SKIP, mode: SKIP, type: SKIP, usage_limit: SKIP,
                   confirmed: SKIP, metadata: SKIP, created_on: SKIP,
                   updated_on: SKIP, last_used_on: SKIP, data: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @store_id = store_id unless store_id == SKIP
      @email = email unless email == SKIP
      @payment_type = payment_type unless payment_type == SKIP
      @active = active unless active == SKIP
      @mode = mode unless mode == SKIP
      @type = type unless type == SKIP
      @usage_limit = usage_limit unless usage_limit == SKIP
      @confirmed = confirmed unless confirmed == SKIP
      @metadata = metadata unless metadata == SKIP
      @created_on = created_on unless created_on == SKIP
      @updated_on = updated_on unless updated_on == SKIP
      @last_used_on = last_used_on unless last_used_on == SKIP
      @data = data unless data == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      store_id = hash.key?('store_id') ? hash['store_id'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP
      active = hash.key?('active') ? hash['active'] : SKIP
      mode = hash.key?('mode') ? hash['mode'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
      usage_limit = hash.key?('usage_limit') ? hash['usage_limit'] : SKIP
      confirmed = hash.key?('confirmed') ? hash['confirmed'] : SKIP
      metadata = hash.key?('metadata') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:TransactionTokenMetadataAdditionalProperties), hash['metadata']
      ) : SKIP
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end
      updated_on = if hash.key?('updated_on')
                     (DateTimeHelper.from_rfc3339(hash['updated_on']) if hash['updated_on'])
                   else
                     SKIP
                   end
      last_used_on = if hash.key?('last_used_on')
                       (DateTimeHelper.from_rfc3339(hash['last_used_on']) if hash['last_used_on'])
                     else
                       SKIP
                     end
      data = hash.key?('data') ? APIHelper.deserialize_union_type(
        UnionTypeLookUp.get(:TransactionTokenData), hash['data']
      ) : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TransactionToken.new(id: id,
                           store_id: store_id,
                           email: email,
                           payment_type: payment_type,
                           active: active,
                           mode: mode,
                           type: type,
                           usage_limit: usage_limit,
                           confirmed: confirmed,
                           metadata: metadata,
                           created_on: created_on,
                           updated_on: updated_on,
                           last_used_on: last_used_on,
                           data: data,
                           additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    def to_custom_updated_on
      DateTimeHelper.to_rfc3339(updated_on)
    end

    def to_custom_last_used_on
      DateTimeHelper.to_rfc3339(last_used_on)
    end

    # Validates an instance of the object from a given value.
    # @param [TransactionToken | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, store_id: #{@store_id}, email: #{@email}, payment_type:"\
      " #{@payment_type}, active: #{@active}, mode: #{@mode}, type: #{@type}, usage_limit:"\
      " #{@usage_limit}, confirmed: #{@confirmed}, metadata: #{@metadata}, created_on:"\
      " #{@created_on}, updated_on: #{@updated_on}, last_used_on: #{@last_used_on}, data:"\
      " #{@data}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, store_id: #{@store_id.inspect}, email:"\
      " #{@email.inspect}, payment_type: #{@payment_type.inspect}, active: #{@active.inspect},"\
      " mode: #{@mode.inspect}, type: #{@type.inspect}, usage_limit: #{@usage_limit.inspect},"\
      " confirmed: #{@confirmed.inspect}, metadata: #{@metadata.inspect}, created_on:"\
      " #{@created_on.inspect}, updated_on: #{@updated_on.inspect}, last_used_on:"\
      " #{@last_used_on.inspect}, data: #{@data.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
