# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Store row returned by store list queries.
  class StoreListItem < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Store identifier.
    # @return [UUID | String]
    attr_accessor :id

    # Store display name.
    # @return [String]
    attr_accessor :name

    # Merchant display name associated with the store row.
    # @return [String]
    attr_accessor :merchant_name

    # Timestamp when the store was created.
    # @return [DateTime]
    attr_accessor :created_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['name'] = 'name'
      @_hash['merchant_name'] = 'merchant_name'
      @_hash['created_on'] = 'created_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        name
        merchant_name
        created_on
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(id: SKIP, name: SKIP, merchant_name: SKIP, created_on: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @name = name unless name == SKIP
      @merchant_name = merchant_name unless merchant_name == SKIP
      @created_on = created_on unless created_on == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      merchant_name = hash.key?('merchant_name') ? hash['merchant_name'] : SKIP
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      StoreListItem.new(id: id,
                        name: name,
                        merchant_name: merchant_name,
                        created_on: created_on,
                        additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, name: #{@name}, merchant_name: #{@merchant_name}, created_on:"\
      " #{@created_on}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, name: #{@name.inspect}, merchant_name:"\
      " #{@merchant_name.inspect}, created_on: #{@created_on.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
