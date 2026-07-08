# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Error payload returned when customs declaration processing fails.
  class CustomsDeclarationWebhookError < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Backend customs declaration error code.
    # @return [Integer]
    attr_accessor :code

    # Human-readable backend error name.
    # @return [String]
    attr_accessor :message

    # Optional backend-provided detail string.
    # @return [String]
    attr_accessor :details

    # Additional nested error records returned by the backend.
    # @return [Array[CustomsDeclarationWebhookOtherError]]
    attr_accessor :others

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['message'] = 'message'
      @_hash['details'] = 'details'
      @_hash['others'] = 'others'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        code
        message
        details
        others
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        details
        others
      ]
    end

    def initialize(code: SKIP, message: SKIP, details: SKIP, others: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @code = code unless code == SKIP
      @message = message unless message == SKIP
      @details = details unless details == SKIP
      @others = others unless others == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash.key?('code') ? hash['code'] : SKIP
      message = hash.key?('message') ? hash['message'] : SKIP
      details = hash.key?('details') ? hash['details'] : SKIP
      # Parameter is an array, so we need to iterate through it
      others = nil
      unless hash['others'].nil?
        others = []
        hash['others'].each do |structure|
          others << (CustomsDeclarationWebhookOtherError.from_hash(structure) if structure)
        end
      end

      others = SKIP unless hash.key?('others')

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CustomsDeclarationWebhookError.new(code: code,
                                         message: message,
                                         details: details,
                                         others: others,
                                         additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CustomsDeclarationWebhookError | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} code: #{@code}, message: #{@message}, details: #{@details}, others:"\
      " #{@others}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} code: #{@code.inspect}, message: #{@message.inspect}, details:"\
      " #{@details.inspect}, others: #{@others.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
