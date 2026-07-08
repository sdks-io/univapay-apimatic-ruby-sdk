# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Token Response Card Data Three Ds schema.
  class TokenResponseCardDataThreeDs < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enabled value.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # Token Response Card Data Three Ds Status schema.
    # @return [TokenResponseCardDataThreeDsStatus]
    attr_accessor :status

    # Redirect endpoint URL.
    # @return [String]
    attr_accessor :redirect_endpoint

    # Redirect identifier.
    # @return [UUID | String]
    attr_accessor :redirect_id

    # Indicates if the 3DS check was exempted. When creating charge 3DS check
    # will not be required.
    # @return [TrueClass | FalseClass]
    attr_accessor :exempted

    # Payment error details, or null if successful.
    # @return [PaymentError]
    attr_accessor :error

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['status'] = 'status'
      @_hash['redirect_endpoint'] = 'redirect_endpoint'
      @_hash['redirect_id'] = 'redirect_id'
      @_hash['exempted'] = 'exempted'
      @_hash['error'] = 'error'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        status
        redirect_endpoint
        redirect_id
        exempted
        error
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        redirect_endpoint
        redirect_id
        error
      ]
    end

    def initialize(enabled: SKIP, status: SKIP, redirect_endpoint: SKIP,
                   redirect_id: SKIP, exempted: SKIP, error: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      @status = status unless status == SKIP
      @redirect_endpoint = redirect_endpoint unless redirect_endpoint == SKIP
      @redirect_id = redirect_id unless redirect_id == SKIP
      @exempted = exempted unless exempted == SKIP
      @error = error unless error == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      redirect_endpoint =
        hash.key?('redirect_endpoint') ? hash['redirect_endpoint'] : SKIP
      redirect_id = hash.key?('redirect_id') ? hash['redirect_id'] : SKIP
      exempted = hash.key?('exempted') ? hash['exempted'] : SKIP
      error = PaymentError.from_hash(hash['error']) if hash['error']

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenResponseCardDataThreeDs.new(enabled: enabled,
                                       status: status,
                                       redirect_endpoint: redirect_endpoint,
                                       redirect_id: redirect_id,
                                       exempted: exempted,
                                       error: error,
                                       additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenResponseCardDataThreeDs | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, status: #{@status}, redirect_endpoint:"\
      " #{@redirect_endpoint}, redirect_id: #{@redirect_id}, exempted: #{@exempted}, error:"\
      " #{@error}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, status: #{@status.inspect},"\
      " redirect_endpoint: #{@redirect_endpoint.inspect}, redirect_id: #{@redirect_id.inspect},"\
      " exempted: #{@exempted.inspect}, error: #{@error.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
