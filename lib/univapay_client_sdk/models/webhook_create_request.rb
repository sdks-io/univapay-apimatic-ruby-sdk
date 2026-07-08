# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request body to create a new store-level webhook subscription.
  class WebhookCreateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # List of event types that trigger this webhook. Must be non-empty and
    # contain only events valid for the store level.
    # @return [Array[WebhookTrigger]]
    attr_accessor :triggers

    # The URL to POST webhook payloads to.
    # @return [String]
    attr_accessor :url

    # Optional bearer token sent in the `Authorization` header of webhook
    # requests.
    # @return [String]
    attr_accessor :auth_token

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['triggers'] = 'triggers'
      @_hash['url'] = 'url'
      @_hash['auth_token'] = 'auth_token'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        auth_token
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        auth_token
      ]
    end

    def initialize(triggers:, url:, auth_token: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @triggers = triggers
      @url = url
      @auth_token = auth_token unless auth_token == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      triggers = hash.key?('triggers') ? hash['triggers'] : nil
      url = hash.key?('url') ? hash['url'] : nil
      auth_token = hash.key?('auth_token') ? hash['auth_token'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      WebhookCreateRequest.new(triggers: triggers,
                               url: url,
                               auth_token: auth_token,
                               additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} triggers: #{@triggers}, url: #{@url}, auth_token: #{@auth_token},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} triggers: #{@triggers.inspect}, url: #{@url.inspect}, auth_token:"\
      " #{@auth_token.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
