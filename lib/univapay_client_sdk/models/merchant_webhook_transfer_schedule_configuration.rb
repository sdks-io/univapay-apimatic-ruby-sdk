# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Transfer schedule configuration inherited by the merchant.
  class MerchantWebhookTransferScheduleConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # ISO-8601 period before charges become payable.
    # @return [String]
    attr_accessor :wait_period

    # Transfer period selected for payouts.
    # @return [String]
    attr_accessor :period

    # Whether the first transfer period must be fully completed.
    # @return [TrueClass | FalseClass]
    attr_accessor :full_period_required

    # Payout day of week when using weekly schedules.
    # @return [String]
    attr_accessor :day_of_week

    # Week of month used by monthly schedules.
    # @return [Integer]
    attr_accessor :week_of_month

    # Day of month used by monthly schedules.
    # @return [Integer]
    attr_accessor :day_of_month

    # Weekly closing day for balance aggregation.
    # @return [String]
    attr_accessor :weekly_closing_day

    # Weekly payout day.
    # @return [String]
    attr_accessor :weekly_payout_day

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['wait_period'] = 'wait_period'
      @_hash['period'] = 'period'
      @_hash['full_period_required'] = 'full_period_required'
      @_hash['day_of_week'] = 'day_of_week'
      @_hash['week_of_month'] = 'week_of_month'
      @_hash['day_of_month'] = 'day_of_month'
      @_hash['weekly_closing_day'] = 'weekly_closing_day'
      @_hash['weekly_payout_day'] = 'weekly_payout_day'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        wait_period
        period
        full_period_required
        day_of_week
        week_of_month
        day_of_month
        weekly_closing_day
        weekly_payout_day
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        full_period_required
        day_of_week
        week_of_month
        day_of_month
        weekly_closing_day
        weekly_payout_day
      ]
    end

    def initialize(wait_period: SKIP, period: SKIP, full_period_required: SKIP,
                   day_of_week: SKIP, week_of_month: SKIP, day_of_month: SKIP,
                   weekly_closing_day: SKIP, weekly_payout_day: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @wait_period = wait_period unless wait_period == SKIP
      @period = period unless period == SKIP
      @full_period_required = full_period_required unless full_period_required == SKIP
      @day_of_week = day_of_week unless day_of_week == SKIP
      @week_of_month = week_of_month unless week_of_month == SKIP
      @day_of_month = day_of_month unless day_of_month == SKIP
      @weekly_closing_day = weekly_closing_day unless weekly_closing_day == SKIP
      @weekly_payout_day = weekly_payout_day unless weekly_payout_day == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      wait_period = hash.key?('wait_period') ? hash['wait_period'] : SKIP
      period = hash.key?('period') ? hash['period'] : SKIP
      full_period_required =
        hash.key?('full_period_required') ? hash['full_period_required'] : SKIP
      day_of_week = hash.key?('day_of_week') ? hash['day_of_week'] : SKIP
      week_of_month = hash.key?('week_of_month') ? hash['week_of_month'] : SKIP
      day_of_month = hash.key?('day_of_month') ? hash['day_of_month'] : SKIP
      weekly_closing_day =
        hash.key?('weekly_closing_day') ? hash['weekly_closing_day'] : SKIP
      weekly_payout_day =
        hash.key?('weekly_payout_day') ? hash['weekly_payout_day'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookTransferScheduleConfiguration.new(wait_period: wait_period,
                                                       period: period,
                                                       full_period_required: full_period_required,
                                                       day_of_week: day_of_week,
                                                       week_of_month: week_of_month,
                                                       day_of_month: day_of_month,
                                                       weekly_closing_day: weekly_closing_day,
                                                       weekly_payout_day: weekly_payout_day,
                                                       additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} wait_period: #{@wait_period}, period: #{@period}, full_period_required:"\
      " #{@full_period_required}, day_of_week: #{@day_of_week}, week_of_month: #{@week_of_month},"\
      " day_of_month: #{@day_of_month}, weekly_closing_day: #{@weekly_closing_day},"\
      " weekly_payout_day: #{@weekly_payout_day}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} wait_period: #{@wait_period.inspect}, period: #{@period.inspect},"\
      " full_period_required: #{@full_period_required.inspect}, day_of_week:"\
      " #{@day_of_week.inspect}, week_of_month: #{@week_of_month.inspect}, day_of_month:"\
      " #{@day_of_month.inspect}, weekly_closing_day: #{@weekly_closing_day.inspect},"\
      " weekly_payout_day: #{@weekly_payout_day.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
