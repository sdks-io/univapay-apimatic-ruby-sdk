# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Customer-management defaults.
  class MerchantWebhookCustomerManagementConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enables customer-management features.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # Roles applied to newly created customers.
    # @return [Array[String]]
    attr_accessor :default_roles

    # Default processing mode assigned to new customer records.
    # @return [String]
    attr_accessor :default_mode

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['default_roles'] = 'default_roles'
      @_hash['default_mode'] = 'default_mode'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        default_roles
        default_mode
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        enabled
        default_roles
        default_mode
      ]
    end

    def initialize(enabled: SKIP, default_roles: SKIP, default_mode: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @default_roles = default_roles unless default_roles == SKIP
      @default_mode = default_mode unless default_mode == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      default_roles = hash.key?('default_roles') ? hash['default_roles'] : SKIP
      default_mode = hash.key?('default_mode') ? hash['default_mode'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookCustomerManagementConfiguration.new(enabled: enabled,
                                                         default_roles: default_roles,
                                                         default_mode: default_mode,
                                                         additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, default_roles: #{@default_roles}, default_mode:"\
      " #{@default_mode}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, default_roles: #{@default_roles.inspect},"\
      " default_mode: #{@default_mode.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
