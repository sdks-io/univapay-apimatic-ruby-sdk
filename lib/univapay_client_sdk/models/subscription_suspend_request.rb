# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request body for suspending a subscription. The
  # `schedule_settings.termination_mode`  field controls when the suspension
  # takes effect.
  class SubscriptionSuspendRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Schedule-related settings.
    # @return [SuspendScheduleSettings]
    attr_accessor :schedule_settings

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['schedule_settings'] = 'schedule_settings'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        schedule_settings
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(schedule_settings: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @schedule_settings = schedule_settings unless schedule_settings == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      schedule_settings = SuspendScheduleSettings.from_hash(hash['schedule_settings']) if
        hash['schedule_settings']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionSuspendRequest.new(schedule_settings: schedule_settings,
                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} schedule_settings: #{@schedule_settings}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} schedule_settings: #{@schedule_settings.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
