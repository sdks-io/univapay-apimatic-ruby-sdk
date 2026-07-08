# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Schedule-related settings.
  class SuspendScheduleSettings < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Subscription Termination Mode schema.
    # @return [SubscriptionTerminationMode]
    attr_accessor :termination_mode

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['termination_mode'] = 'termination_mode'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        termination_mode
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(termination_mode: SubscriptionTerminationMode::IMMEDIATE,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @termination_mode = termination_mode unless termination_mode == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      termination_mode =
        hash['termination_mode'] ||= SubscriptionTerminationMode::IMMEDIATE

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SuspendScheduleSettings.new(termination_mode: termination_mode,
                                  additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} termination_mode: #{@termination_mode}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} termination_mode: #{@termination_mode.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
