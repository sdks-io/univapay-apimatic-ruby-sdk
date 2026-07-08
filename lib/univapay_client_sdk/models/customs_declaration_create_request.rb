# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Request body for creating a customs declaration. Backend currently accepts
  # this shape only for WeChat Online and WeChat MPM charges.
  class CustomsDeclarationCreateRequest < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # WeChat customs authority code used for the declaration.
    # @return [String]
    attr_accessor :customs

    # Merchant customs registration number.
    # @return [String]
    attr_accessor :merchant_customs_no

    # Customer certificate or passport identifier used by customs.
    # @return [String]
    attr_accessor :certificate_id

    # Customer name exactly as shown on the certificate.
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
      []
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(customs:, merchant_customs_no:, certificate_id:,
                   certificate_name:, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @customs = customs
      @merchant_customs_no = merchant_customs_no
      @certificate_id = certificate_id
      @certificate_name = certificate_name
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      customs = hash.key?('customs') ? hash['customs'] : nil
      merchant_customs_no =
        hash.key?('merchant_customs_no') ? hash['merchant_customs_no'] : nil
      certificate_id =
        hash.key?('certificate_id') ? hash['certificate_id'] : nil
      certificate_name =
        hash.key?('certificate_name') ? hash['certificate_name'] : nil

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CustomsDeclarationCreateRequest.new(customs: customs,
                                          merchant_customs_no: merchant_customs_no,
                                          certificate_id: certificate_id,
                                          certificate_name: certificate_name,
                                          additional_properties: additional_properties)
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
