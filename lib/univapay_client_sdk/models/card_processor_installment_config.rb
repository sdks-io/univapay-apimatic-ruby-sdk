# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Card-processor capabilities available for installment payments.
  class CardProcessorInstallmentConfig < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Allows revolving payments through supported processors.
    # @return [TrueClass | FalseClass]
    attr_accessor :revolving

    # Allows fixed-cycle installment payments through supported processors.
    # @return [TrueClass | FalseClass]
    attr_accessor :fixed_cycle

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['revolving'] = 'revolving'
      @_hash['fixed_cycle'] = 'fixed_cycle'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        revolving
        fixed_cycle
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        revolving
        fixed_cycle
      ]
    end

    def initialize(revolving: SKIP, fixed_cycle: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @revolving = revolving unless revolving == SKIP
      @fixed_cycle = fixed_cycle unless fixed_cycle == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      revolving = hash.key?('revolving') ? hash['revolving'] : SKIP
      fixed_cycle = hash.key?('fixed_cycle') ? hash['fixed_cycle'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CardProcessorInstallmentConfig.new(revolving: revolving,
                                         fixed_cycle: fixed_cycle,
                                         additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} revolving: #{@revolving}, fixed_cycle: #{@fixed_cycle},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} revolving: #{@revolving.inspect}, fixed_cycle: #{@fixed_cycle.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
