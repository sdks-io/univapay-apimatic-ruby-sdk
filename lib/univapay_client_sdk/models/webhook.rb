# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Represents a webhook subscription. Webhooks send event notifications to a
  # specified URL when triggered by payment events.
  class Webhook < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier for the webhook.
    # @return [UUID | String]
    attr_accessor :id

    # ID of the store this webhook belongs to (null for merchant-level
    # webhooks).
    # @return [UUID | String]
    attr_accessor :store_id

    # ID of the merchant this webhook belongs to.
    # @return [UUID | String]
    attr_accessor :merchant_id

    # List of event types that trigger this webhook.
    # @return [Array[WebhookTrigger]]
    attr_accessor :triggers

    # The endpoint URL that receives webhook POST requests.
    # @return [String]
    attr_accessor :url

    # Optional bearer token included in the `Authorization` header of webhook
    # requests. Used to authenticate the webhook receiver.
    # @return [String]
    attr_accessor :auth_token

    # Whether this webhook is currently active and receiving events.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # Admin-only flag. Indicates this webhook is used for platform integration
    # purposes. Not settable by merchants.
    # @return [TrueClass | FalseClass]
    attr_accessor :is_integration

    # Timestamp when the webhook was created.
    # @return [DateTime]
    attr_accessor :created_on

    # Timestamp when the webhook was last updated.
    # @return [DateTime]
    attr_accessor :updated_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['store_id'] = 'store_id'
      @_hash['merchant_id'] = 'merchant_id'
      @_hash['triggers'] = 'triggers'
      @_hash['url'] = 'url'
      @_hash['auth_token'] = 'auth_token'
      @_hash['active'] = 'active'
      @_hash['is_integration'] = 'is_integration'
      @_hash['created_on'] = 'created_on'
      @_hash['updated_on'] = 'updated_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        store_id
        merchant_id
        triggers
        url
        auth_token
        active
        is_integration
        created_on
        updated_on
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        store_id
        merchant_id
        auth_token
      ]
    end

    def initialize(id: SKIP, store_id: SKIP, merchant_id: SKIP, triggers: SKIP,
                   url: SKIP, auth_token: SKIP, active: SKIP,
                   is_integration: SKIP, created_on: SKIP, updated_on: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @store_id = store_id unless store_id == SKIP
      @merchant_id = merchant_id unless merchant_id == SKIP
      @triggers = triggers unless triggers == SKIP
      @url = url unless url == SKIP
      @auth_token = auth_token unless auth_token == SKIP
      @active = active unless active == SKIP
      @is_integration = is_integration unless is_integration == SKIP
      @created_on = created_on unless created_on == SKIP
      @updated_on = updated_on unless updated_on == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      store_id = hash.key?('store_id') ? hash['store_id'] : SKIP
      merchant_id = hash.key?('merchant_id') ? hash['merchant_id'] : SKIP
      triggers = hash.key?('triggers') ? hash['triggers'] : SKIP
      url = hash.key?('url') ? hash['url'] : SKIP
      auth_token = hash.key?('auth_token') ? hash['auth_token'] : SKIP
      active = hash.key?('active') ? hash['active'] : SKIP
      is_integration =
        hash.key?('is_integration') ? hash['is_integration'] : SKIP
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

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      Webhook.new(id: id,
                  store_id: store_id,
                  merchant_id: merchant_id,
                  triggers: triggers,
                  url: url,
                  auth_token: auth_token,
                  active: active,
                  is_integration: is_integration,
                  created_on: created_on,
                  updated_on: updated_on,
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
      "<#{class_name} id: #{@id}, store_id: #{@store_id}, merchant_id: #{@merchant_id}, triggers:"\
      " #{@triggers}, url: #{@url}, auth_token: #{@auth_token}, active: #{@active},"\
      " is_integration: #{@is_integration}, created_on: #{@created_on}, updated_on:"\
      " #{@updated_on}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, store_id: #{@store_id.inspect}, merchant_id:"\
      " #{@merchant_id.inspect}, triggers: #{@triggers.inspect}, url: #{@url.inspect}, auth_token:"\
      " #{@auth_token.inspect}, active: #{@active.inspect}, is_integration:"\
      " #{@is_integration.inspect}, created_on: #{@created_on.inspect}, updated_on:"\
      " #{@updated_on.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
