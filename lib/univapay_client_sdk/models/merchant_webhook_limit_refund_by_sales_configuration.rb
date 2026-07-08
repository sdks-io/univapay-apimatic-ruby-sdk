# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Refund-limiting configuration based on sales history.
  class MerchantWebhookLimitRefundBySalesConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enables sales-based refund limit checks.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # Sales aggregation period used to evaluate refund limits.
    # @return [String]
    attr_accessor :period

    # Uses a rolling window instead of fixed calendar periods.
    # @return [TrueClass | FalseClass]
    attr_accessor :rolling_window

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['period'] = 'period'
      @_hash['rolling_window'] = 'rolling_window'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        period
        rolling_window
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        enabled
        period
        rolling_window
      ]
    end

    def initialize(enabled: SKIP, period: SKIP, rolling_window: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @period = period unless period == SKIP
      @rolling_window = rolling_window unless rolling_window == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      period = hash.key?('period') ? hash['period'] : SKIP
      rolling_window =
        hash.key?('rolling_window') ? hash['rolling_window'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookLimitRefundBySalesConfiguration.new(enabled: enabled,
                                                         period: period,
                                                         rolling_window: rolling_window,
                                                         additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, period: #{@period}, rolling_window:"\
      " #{@rolling_window}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, period: #{@period.inspect}, rolling_window:"\
      " #{@rolling_window.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
