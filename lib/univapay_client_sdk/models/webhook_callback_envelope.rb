# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Common wrapper POSTed to your webhook URL for every event. The `data` field
  # contains the domain object relevant to the event type.
  class WebhookCallbackEnvelope < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique ID of this webhook delivery.
    # @return [UUID | String]
    attr_accessor :id

    # Event type that triggers a webhook notification.
    # @return [WebhookTrigger]
    attr_accessor :event

    # Timestamp when the event was fired.
    # @return [DateTime]
    attr_accessor :created_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['event'] = 'event'
      @_hash['created_on'] = 'created_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id:, event:, created_on:, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id
      @event = event
      @created_on = created_on
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      event = hash.key?('event') ? hash['event'] : nil
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   end

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      WebhookCallbackEnvelope.new(id: id,
                                  event: event,
                                  created_on: created_on,
                                  additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, event: #{@event}, created_on: #{@created_on},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, event: #{@event.inspect}, created_on:"\
      " #{@created_on.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
