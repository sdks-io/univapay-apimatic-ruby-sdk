# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Paginated list of subscription payments.
  class SubscriptionPaymentList < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # List of resources.
    # @return [Array[SubscriptionPayment]]
    attr_accessor :items

    # Whether more results are available.
    # @return [TrueClass | FalseClass]
    attr_accessor :has_more

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['items'] = 'items'
      @_hash['has_more'] = 'has_more'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        items
        has_more
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(items: SKIP, has_more: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @items = items unless items == SKIP
      @has_more = has_more unless has_more == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      # Parameter is an array, so we need to iterate through it
      items = nil
      unless hash['items'].nil?
        items = []
        hash['items'].each do |structure|
          items << (SubscriptionPayment.from_hash(structure) if structure)
        end
      end

      items = SKIP unless hash.key?('items')
      has_more = hash.key?('has_more') ? hash['has_more'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      SubscriptionPaymentList.new(items: items,
                                  has_more: has_more,
                                  additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} items: #{@items}, has_more: #{@has_more}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} items: #{@items.inspect}, has_more: #{@has_more.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
