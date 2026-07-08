# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request body for updating a webhook. All fields are optional. Omitted fields
  # are left unchanged.
  class WebhookUpdateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Replace the trigger list. Must be non-empty if provided.
    # @return [Array[WebhookTrigger]]
    attr_accessor :triggers

    # Update the webhook endpoint URL.
    # @return [String]
    attr_accessor :url

    # Update or clear the auth token. Send `null` to remove.
    # @return [String]
    attr_accessor :auth_token

    # Enable or disable the webhook.
    # @return [TrueClass | FalseClass]
    attr_accessor :active

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['triggers'] = 'triggers'
      @_hash['url'] = 'url'
      @_hash['auth_token'] = 'auth_token'
      @_hash['active'] = 'active'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        triggers
        url
        auth_token
        active
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        auth_token
      ]
    end

    def initialize(triggers: SKIP, url: SKIP, auth_token: SKIP, active: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @triggers = triggers unless triggers == SKIP
      @url = url unless url == SKIP
      @auth_token = auth_token unless auth_token == SKIP
      @active = active unless active == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      triggers = hash.key?('triggers') ? hash['triggers'] : SKIP
      url = hash.key?('url') ? hash['url'] : SKIP
      auth_token = hash.key?('auth_token') ? hash['auth_token'] : SKIP
      active = hash.key?('active') ? hash['active'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      WebhookUpdateRequest.new(triggers: triggers,
                               url: url,
                               auth_token: auth_token,
                               active: active,
                               additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} triggers: #{@triggers}, url: #{@url}, auth_token: #{@auth_token}, active:"\
      " #{@active}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} triggers: #{@triggers.inspect}, url: #{@url.inspect}, auth_token:"\
      " #{@auth_token.inspect}, active: #{@active.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
