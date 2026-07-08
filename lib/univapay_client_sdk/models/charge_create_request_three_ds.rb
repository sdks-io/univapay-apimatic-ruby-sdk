# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Charge Create Request Three Ds schema.
  class ChargeCreateRequestThreeDs < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # URL to redirect the customer to after 3DS authentication.
    # @return [String]
    attr_accessor :redirect_endpoint

    # 3D-Secure authentication type. App Token Secret is required to use 'skip'.
    # @return [ChargeCreateRequestThreeDsMode]
    attr_accessor :mode

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['redirect_endpoint'] = 'redirect_endpoint'
      @_hash['mode'] = 'mode'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        redirect_endpoint
        mode
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(redirect_endpoint: SKIP,
                   mode: ChargeCreateRequestThreeDsMode::NORMAL,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @redirect_endpoint = redirect_endpoint unless redirect_endpoint == SKIP
      @mode = mode unless mode == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      redirect_endpoint =
        hash.key?('redirect_endpoint') ? hash['redirect_endpoint'] : SKIP
      mode = hash['mode'] ||= ChargeCreateRequestThreeDsMode::NORMAL

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      ChargeCreateRequestThreeDs.new(redirect_endpoint: redirect_endpoint,
                                     mode: mode,
                                     additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} redirect_endpoint: #{@redirect_endpoint}, mode: #{@mode},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} redirect_endpoint: #{@redirect_endpoint.inspect}, mode: #{@mode.inspect},"\
      " additional_properties: #{@additional_properties}>"
    end
  end
end
