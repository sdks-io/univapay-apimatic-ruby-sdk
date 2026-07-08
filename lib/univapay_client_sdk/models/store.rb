# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Store resource returned by the backend `FullStore` formatter. It combines
  # core store identity with the resolved configuration snapshot used for
  # runtime policy evaluation.
  class Store < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Store identifier.
    # @return [UUID | String]
    attr_accessor :id

    # Store display name.
    # @return [String]
    attr_accessor :name

    # Timestamp when the store was created.
    # @return [DateTime]
    attr_accessor :created_on

    # Store-scoped configuration snapshot serialized by gyron-payments-api. It
    # uses the same flattened serializer as merchant configuration, but omits
    # `transfer_schedule`.
    # @return [MerchantWebhookConfiguration]
    attr_accessor :configuration

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['created_on'] = 'created_on'
      @_hash['configuration'] = 'configuration'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        created_on
        configuration
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, name: SKIP, created_on: SKIP, configuration: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @created_on = created_on unless created_on == SKIP
      @configuration = configuration unless configuration == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end
      configuration = MerchantWebhookConfiguration.from_hash(hash['configuration']) if
        hash['configuration']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      Store.new(id: id,
                name: name,
                created_on: created_on,
                configuration: configuration,
                additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, name: #{@name}, created_on: #{@created_on}, configuration:"\
      " #{@configuration}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, name: #{@name.inspect}, created_on:"\
      " #{@created_on.inspect}, configuration: #{@configuration.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
