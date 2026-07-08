# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Webhook envelope whose `data` payload is a Refund resource.
  class RefundWebhookCallback < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Event type discriminator — always `refund_finished` for this callback.
    # @return [RefundEvent]
    attr_accessor :event

    # Unique ID of this webhook delivery.
    # @return [UUID | String]
    attr_accessor :id

    # Timestamp when the event was fired.
    # @return [DateTime]
    attr_accessor :created_on

    # Represents a refund issued against a charge.
    # @return [Refund]
    attr_accessor :data

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['event'] = 'event'
      @_hash['id'] = 'id'
      @_hash['created_on'] = 'created_on'
      @_hash['data'] = 'data'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        event
        data
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id:, created_on:, event: SKIP, data: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @event = event unless event == SKIP
      @id = id
      @created_on = created_on
      @data = data unless data == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : nil
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   end
      event = hash.key?('event') ? hash['event'] : SKIP
      data = Refund.from_hash(hash['data']) if hash['data']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      RefundWebhookCallback.new(id: id,
                                created_on: created_on,
                                event: event,
                                data: data,
                                additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Validates an instance of the object from a given value.
    # @param [RefundWebhookCallback | Hash] The value against the validation is performed.
    def self.validate(value)
      if value.instance_of? self
        return (
          APIHelper.valid_type?(value.id,
                                ->(val) { val.instance_of? String }) and
            APIHelper.valid_type?(value.created_on,
                                  ->(val) { val.instance_of? DateTime })
        )
      end

      return false unless value.instance_of? Hash

      (
        APIHelper.valid_type?(value['id'],
                              ->(val) { val.instance_of? String }) and
          APIHelper.valid_type?(value['created_on'],
                                ->(val) { val.instance_of? String })
      )
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} event: #{@event}, id: #{@id}, created_on: #{@created_on}, data: #{@data},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} event: #{@event.inspect}, id: #{@id.inspect}, created_on:"\
      " #{@created_on.inspect}, data: #{@data.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
