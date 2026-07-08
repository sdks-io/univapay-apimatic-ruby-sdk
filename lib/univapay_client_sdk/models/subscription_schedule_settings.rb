# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Schedule settings applied to a subscription.
  class SubscriptionScheduleSettings < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Date when the recurring schedule starts (YYYY-MM-DD).
    # @return [Date]
    attr_accessor :start_on

    # IANA Timezone ID.
    # @return [String]
    attr_accessor :zone_id

    # If true, subsequent charges will always occur on the last day of the
    # month.
    # @return [TrueClass | FalseClass]
    attr_accessor :preserve_end_of_month

    # ISO-8601 Duration for retry interval if payment fails (e.g., P5D).
    # @return [String]
    attr_accessor :retry_interval

    # Subscription Termination Mode schema.
    # @return [SubscriptionTerminationMode]
    attr_accessor :termination_mode

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['start_on'] = 'start_on'
      @_hash['zone_id'] = 'zone_id'
      @_hash['preserve_end_of_month'] = 'preserve_end_of_month'
      @_hash['retry_interval'] = 'retry_interval'
      @_hash['termination_mode'] = 'termination_mode'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        start_on
        zone_id
        preserve_end_of_month
        retry_interval
        termination_mode
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(start_on: SKIP, zone_id: SKIP, preserve_end_of_month: SKIP,
                   retry_interval: SKIP,
                   termination_mode: SubscriptionTerminationMode::IMMEDIATE,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @start_on = start_on unless start_on == SKIP
      @zone_id = zone_id unless zone_id == SKIP
      @preserve_end_of_month = preserve_end_of_month unless preserve_end_of_month == SKIP
      @retry_interval = retry_interval unless retry_interval == SKIP
      @termination_mode = termination_mode unless termination_mode == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      start_on = hash.key?('start_on') ? hash['start_on'] : SKIP
      zone_id = hash.key?('zone_id') ? hash['zone_id'] : SKIP
      preserve_end_of_month =
        hash.key?('preserve_end_of_month') ? hash['preserve_end_of_month'] : SKIP
      retry_interval =
        hash.key?('retry_interval') ? hash['retry_interval'] : SKIP
      termination_mode =
        hash['termination_mode'] ||= SubscriptionTerminationMode::IMMEDIATE

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionScheduleSettings.new(start_on: start_on,
                                       zone_id: zone_id,
                                       preserve_end_of_month: preserve_end_of_month,
                                       retry_interval: retry_interval,
                                       termination_mode: termination_mode,
                                       additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [SubscriptionScheduleSettings | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} start_on: #{@start_on}, zone_id: #{@zone_id}, preserve_end_of_month:"\
      " #{@preserve_end_of_month}, retry_interval: #{@retry_interval}, termination_mode:"\
      " #{@termination_mode}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} start_on: #{@start_on.inspect}, zone_id: #{@zone_id.inspect},"\
      " preserve_end_of_month: #{@preserve_end_of_month.inspect}, retry_interval:"\
      " #{@retry_interval.inspect}, termination_mode: #{@termination_mode.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
