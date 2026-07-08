# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # QR scan payment settings.
  class MerchantWebhookQrScanConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Enables QR scan payments.
    # @return [TrueClass | FalseClass]
    attr_accessor :enabled

    # QR scan gateways disabled for the merchant.
    # @return [Array[String]]
    attr_accessor :forbidden_qr_scan_gateways

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['enabled'] = 'enabled'
      @_hash['forbidden_qr_scan_gateways'] = 'forbidden_qr_scan_gateways'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        enabled
        forbidden_qr_scan_gateways
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        enabled
        forbidden_qr_scan_gateways
      ]
    end

    def initialize(enabled: SKIP, forbidden_qr_scan_gateways: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @enabled = enabled unless enabled == SKIP
      unless forbidden_qr_scan_gateways == SKIP
        @forbidden_qr_scan_gateways =
          forbidden_qr_scan_gateways
      end
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      enabled = hash.key?('enabled') ? hash['enabled'] : SKIP
      forbidden_qr_scan_gateways =
        hash.key?('forbidden_qr_scan_gateways') ? hash['forbidden_qr_scan_gateways'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookQrScanConfiguration.new(enabled: enabled,
                                             forbidden_qr_scan_gateways: forbidden_qr_scan_gateways,
                                             additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled}, forbidden_qr_scan_gateways:"\
      " #{@forbidden_qr_scan_gateways}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} enabled: #{@enabled.inspect}, forbidden_qr_scan_gateways:"\
      " #{@forbidden_qr_scan_gateways.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
