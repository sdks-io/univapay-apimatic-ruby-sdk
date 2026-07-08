# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # WeChat customs declaration payload returned by the backend formatter.
  class CustomsDeclarationWebhookDeclaration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # WeChat customs authority code.
    # @return [String]
    attr_accessor :customs

    # Merchant customs registration number.
    # @return [String]
    attr_accessor :merchant_customs_no

    # Customer certificate or passport identifier.
    # @return [String]
    attr_accessor :certificate_id

    # Customer name as provided to customs.
    # @return [String]
    attr_accessor :certificate_name

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['customs'] = 'customs'
      @_hash['merchant_customs_no'] = 'merchant_customs_no'
      @_hash['certificate_id'] = 'certificate_id'
      @_hash['certificate_name'] = 'certificate_name'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        customs
        merchant_customs_no
        certificate_id
        certificate_name
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(customs: SKIP, merchant_customs_no: SKIP,
                   certificate_id: SKIP, certificate_name: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @customs = customs unless customs == SKIP
      @merchant_customs_no = merchant_customs_no unless merchant_customs_no == SKIP
      @certificate_id = certificate_id unless certificate_id == SKIP
      @certificate_name = certificate_name unless certificate_name == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customs = hash.key?('customs') ? hash['customs'] : SKIP
      merchant_customs_no =
        hash.key?('merchant_customs_no') ? hash['merchant_customs_no'] : SKIP
      certificate_id =
        hash.key?('certificate_id') ? hash['certificate_id'] : SKIP
      certificate_name =
        hash.key?('certificate_name') ? hash['certificate_name'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CustomsDeclarationWebhookDeclaration.new(customs: customs,
                                               merchant_customs_no: merchant_customs_no,
                                               certificate_id: certificate_id,
                                               certificate_name: certificate_name,
                                               additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [CustomsDeclarationWebhookDeclaration | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} customs: #{@customs}, merchant_customs_no: #{@merchant_customs_no},"\
      " certificate_id: #{@certificate_id}, certificate_name: #{@certificate_name},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} customs: #{@customs.inspect}, merchant_customs_no:"\
      " #{@merchant_customs_no.inspect}, certificate_id: #{@certificate_id.inspect},"\
      " certificate_name: #{@certificate_name.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
