# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Represents a single delivery attempt of a webhook event, including the
  # payload sent and the delivery outcome.
  class WebhookEvent < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier for the webhook event.
    # @return [UUID | String]
    attr_accessor :id

    # ID of the parent webhook.
    # @return [UUID | String]
    attr_accessor :webhook_id

    # Event type that triggers a webhook notification.
    # @return [WebhookTrigger]
    attr_accessor :event

    # Domain object payload for webhook deliveries. The actual structure depends
    # on the event type — see each webhook callback schema for the specific
    # payload shape.
    # @return [Object]
    attr_accessor :data

    # Whether the webhook delivery was acknowledged (HTTP 2xx).
    # @return [TrueClass | FalseClass]
    attr_accessor :successful

    # Timestamp when the webhook was dispatched.
    # @return [DateTime]
    attr_accessor :fired_on

    # Error message if delivery failed.
    # @return [String]
    attr_accessor :error_message

    # Timestamp when the event was created.
    # @return [DateTime]
    attr_accessor :created_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['webhook_id'] = 'webhook_id'
      @_hash['event'] = 'event'
      @_hash['data'] = 'data'
      @_hash['successful'] = 'successful'
      @_hash['fired_on'] = 'fired_on'
      @_hash['error_message'] = 'error_message'
      @_hash['created_on'] = 'created_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        webhook_id
        event
        data
        successful
        fired_on
        error_message
        created_on
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        error_message
      ]
    end

    def initialize(id: SKIP, webhook_id: SKIP, event: SKIP, data: SKIP,
                   successful: SKIP, fired_on: SKIP, error_message: SKIP,
                   created_on: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @webhook_id = webhook_id unless webhook_id == SKIP
      @event = event unless event == SKIP
      @data = data unless data == SKIP
      @successful = successful unless successful == SKIP
      @fired_on = fired_on unless fired_on == SKIP
      @error_message = error_message unless error_message == SKIP
      @created_on = created_on unless created_on == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      webhook_id = hash.key?('webhook_id') ? hash['webhook_id'] : SKIP
      event = hash.key?('event') ? hash['event'] : SKIP
      data = hash.key?('data') ? hash['data'] : SKIP
      successful = hash.key?('successful') ? hash['successful'] : SKIP
      fired_on = if hash.key?('fired_on')
                   (DateTimeHelper.from_rfc3339(hash['fired_on']) if hash['fired_on'])
                 else
                   SKIP
                 end
      error_message = hash.key?('error_message') ? hash['error_message'] : SKIP
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      WebhookEvent.new(id: id,
                       webhook_id: webhook_id,
                       event: event,
                       data: data,
                       successful: successful,
                       fired_on: fired_on,
                       error_message: error_message,
                       created_on: created_on,
                       additional_properties: additional_properties)
    end

    def to_custom_fired_on
      DateTimeHelper.to_rfc3339(fired_on)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, webhook_id: #{@webhook_id}, event: #{@event}, data: #{@data},"\
      " successful: #{@successful}, fired_on: #{@fired_on}, error_message: #{@error_message},"\
      " created_on: #{@created_on}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, webhook_id: #{@webhook_id.inspect}, event:"\
      " #{@event.inspect}, data: #{@data.inspect}, successful: #{@successful.inspect}, fired_on:"\
      " #{@fired_on.inspect}, error_message: #{@error_message.inspect}, created_on:"\
      " #{@created_on.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
