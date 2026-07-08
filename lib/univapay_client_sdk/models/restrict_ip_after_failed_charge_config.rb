# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # IP restriction policy applied after repeated failed charges.
  class RestrictIpAfterFailedChargeConfig < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enables temporary IP restrictions after repeated failures.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # Number of failed charges allowed before restriction starts.
    # @return [Integer]
    attr_accessor :count

    # ISO-8601 duration that the IP restriction remains active.
    # @return [String]
    attr_accessor :cooldown

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['count'] = 'count'
      @_hash['cooldown'] = 'cooldown'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        count
        cooldown
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        enabled
        count
        cooldown
      ]
    end

    def initialize(enabled: SKIP, count: SKIP, cooldown: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @count = count unless count == SKIP
      @cooldown = cooldown unless cooldown == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      count = hash.key?('count') ? hash['count'] : SKIP
      cooldown = hash.key?('cooldown') ? hash['cooldown'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      RestrictIpAfterFailedChargeConfig.new(enabled: enabled,
                                            count: count,
                                            cooldown: cooldown,
                                            additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, count: #{@count}, cooldown: #{@cooldown},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, count: #{@count.inspect}, cooldown:"\
      " #{@cooldown.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
