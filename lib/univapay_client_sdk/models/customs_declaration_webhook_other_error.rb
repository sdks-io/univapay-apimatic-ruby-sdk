# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Nested customs-processing error entry returned in `others`.
  class CustomsDeclarationWebhookOtherError < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Backend other-error type.
    # @return [String]
    attr_accessor :type

    # Gateway credentials involved in the error when applicable.
    # @return [UUID | String]
    attr_accessor :credentials_id

    # Additional reason values for `not_selected_reasons`.
    # @return [Array[String]]
    attr_accessor :message

    # Related item name for `related_item`.
    # @return [String]
    attr_accessor :item_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['type'] = 'type'
      @_hash['credentials_id'] = 'credentials_id'
      @_hash['message'] = 'message'
      @_hash['item_name'] = 'item_name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        type
        credentials_id
        message
        item_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        credentials_id
        message
        item_name
      ]
    end

    def initialize(type: SKIP, credentials_id: SKIP, message: SKIP,
                   item_name: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @type = type unless type == SKIP
      @credentials_id = credentials_id unless credentials_id == SKIP
      @message = message unless message == SKIP
      @item_name = item_name unless item_name == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      type = hash.key?('type') ? hash['type'] : SKIP
      credentials_id =
        hash.key?('credentials_id') ? hash['credentials_id'] : SKIP
      message = hash.key?('message') ? hash['message'] : SKIP
      item_name = hash.key?('item_name') ? hash['item_name'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CustomsDeclarationWebhookOtherError.new(type: type,
                                              credentials_id: credentials_id,
                                              message: message,
                                              item_name: item_name,
                                              additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CustomsDeclarationWebhookOtherError | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} type: #{@type}, credentials_id: #{@credentials_id}, message: #{@message},"\
      " item_name: #{@item_name}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} type: #{@type.inspect}, credentials_id: #{@credentials_id.inspect},"\
      " message: #{@message.inspect}, item_name: #{@item_name.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
