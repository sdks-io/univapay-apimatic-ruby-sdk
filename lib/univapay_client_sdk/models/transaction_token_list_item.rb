# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Transaction token entry returned in list responses.
  class TransactionTokenListItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier.
    # @return [UUID | String]
    attr_accessor :id

    # Store identifier.
    # @return [UUID | String]
    attr_accessor :store_id

    # Merchant display name.
    # @return [String]
    attr_accessor :merchant_name

    # Store display name.
    # @return [String]
    attr_accessor :store_name

    # Customer email address.
    # @return [String]
    attr_accessor :email

    # Payment method type.
    # @return [String]
    attr_accessor :payment_type

    # Whether the resource is active.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # Processing mode for the resource.
    # @return [String]
    attr_accessor :mode

    # Type of the resource.
    # @return [String]
    attr_accessor :type

    # Timestamp when the resource was created.
    # @return [DateTime]
    attr_accessor :created_on

    # Timestamp when the resource was last updated.
    # @return [DateTime]
    attr_accessor :updated_on

    # Transaction Token List Item User Data schema.
    # @return [TransactionTokenListItemUserData]
    attr_accessor :user_data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['store_id'] = 'store_id'
      @_hash['merchant_name'] = 'merchant_name'
      @_hash['store_name'] = 'store_name'
      @_hash['email'] = 'email'
      @_hash['payment_type'] = 'payment_type'
      @_hash['active'] = 'active'
      @_hash['mode'] = 'mode'
      @_hash['type'] = 'type'
      @_hash['created_on'] = 'created_on'
      @_hash['updated_on'] = 'updated_on'
      @_hash['user_data'] = 'user_data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        store_id
        merchant_name
        store_name
        email
        payment_type
        active
        mode
        type
        created_on
        updated_on
        user_data
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, store_id: SKIP, merchant_name: SKIP,
                   store_name: SKIP, email: SKIP, payment_type: SKIP,
                   active: SKIP, mode: SKIP, type: SKIP, created_on: SKIP,
                   updated_on: SKIP, user_data: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @store_id = store_id unless store_id == SKIP
      @merchant_name = merchant_name unless merchant_name == SKIP
      @store_name = store_name unless store_name == SKIP
      @email = email unless email == SKIP
      @payment_type = payment_type unless payment_type == SKIP
      @active = active unless active == SKIP
      @mode = mode unless mode == SKIP
      @type = type unless type == SKIP
      @created_on = created_on unless created_on == SKIP
      @updated_on = updated_on unless updated_on == SKIP
      @user_data = user_data unless user_data == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      store_id = hash.key?('store_id') ? hash['store_id'] : SKIP
      merchant_name = hash.key?('merchant_name') ? hash['merchant_name'] : SKIP
      store_name = hash.key?('store_name') ? hash['store_name'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      payment_type = hash.key?('payment_type') ? hash['payment_type'] : SKIP
      active = hash.key?('active') ? hash['active'] : SKIP
      mode = hash.key?('mode') ? hash['mode'] : SKIP
      type = hash.key?('type') ? hash['type'] : SKIP
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
      user_data = TransactionTokenListItemUserData.from_hash(hash['user_data']) if
        hash['user_data']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TransactionTokenListItem.new(id: id,
                                   store_id: store_id,
                                   merchant_name: merchant_name,
                                   store_name: store_name,
                                   email: email,
                                   payment_type: payment_type,
                                   active: active,
                                   mode: mode,
                                   type: type,
                                   created_on: created_on,
                                   updated_on: updated_on,
                                   user_data: user_data,
                                   additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    def to_custom_updated_on
      DateTimeHelper.to_rfc3339(updated_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, store_id: #{@store_id}, merchant_name: #{@merchant_name},"\
      " store_name: #{@store_name}, email: #{@email}, payment_type: #{@payment_type}, active:"\
      " #{@active}, mode: #{@mode}, type: #{@type}, created_on: #{@created_on}, updated_on:"\
      " #{@updated_on}, user_data: #{@user_data}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, store_id: #{@store_id.inspect}, merchant_name:"\
      " #{@merchant_name.inspect}, store_name: #{@store_name.inspect}, email: #{@email.inspect},"\
      " payment_type: #{@payment_type.inspect}, active: #{@active.inspect}, mode:"\
      " #{@mode.inspect}, type: #{@type.inspect}, created_on: #{@created_on.inspect}, updated_on:"\
      " #{@updated_on.inspect}, user_data: #{@user_data.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
