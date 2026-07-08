# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Configuration for credit card company side installments.
  class SubscriptionInstallmentPlan < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Plan type selector.
    # @return [InstallmentPlanType]
    attr_accessor :plan_type

    # Required if plan_type is fixed_cycles.
    # @return [InstallmentFixedCycles]
    attr_accessor :fixed_cycles

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['plan_type'] = 'plan_type'
      @_hash['fixed_cycles'] = 'fixed_cycles'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        plan_type
        fixed_cycles
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(plan_type: SKIP, fixed_cycles: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @plan_type = plan_type unless plan_type == SKIP
      @fixed_cycles = fixed_cycles unless fixed_cycles == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      plan_type = hash.key?('plan_type') ? hash['plan_type'] : SKIP
      fixed_cycles = hash.key?('fixed_cycles') ? hash['fixed_cycles'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionInstallmentPlan.new(plan_type: plan_type,
                                      fixed_cycles: fixed_cycles,
                                      additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} plan_type: #{@plan_type}, fixed_cycles: #{@fixed_cycles},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} plan_type: #{@plan_type.inspect}, fixed_cycles: #{@fixed_cycles.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
