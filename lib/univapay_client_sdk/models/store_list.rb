# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Paginated store search result.
  class StoreList < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Store rows matching the current filter set.
    # @return [Array[StoreListItem]]
    attr_accessor :items

    # Whether another page is available.
    # @return [TrueClass | FalseClass]
    attr_accessor :has_more

    # Total number of matching stores when available.
    # @return [Integer]
    attr_accessor :total_hits

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['items'] = 'items'
      @_hash['has_more'] = 'has_more'
      @_hash['total_hits'] = 'total_hits'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        items
        has_more
        total_hits
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(items: SKIP, has_more: SKIP, total_hits: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @items = items unless items == SKIP
      @has_more = has_more unless has_more == SKIP
      @total_hits = total_hits unless total_hits == SKIP
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
          items << (StoreListItem.from_hash(structure) if structure)
        end
      end

      items = SKIP unless hash.key?('items')
      has_more = hash.key?('has_more') ? hash['has_more'] : SKIP
      total_hits = hash.key?('total_hits') ? hash['total_hits'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      StoreList.new(items: items,
                    has_more: has_more,
                    total_hits: total_hits,
                    additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} items: #{@items}, has_more: #{@has_more}, total_hits: #{@total_hits},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} items: #{@items.inspect}, has_more: #{@has_more.inspect}, total_hits:"\
      " #{@total_hits.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
