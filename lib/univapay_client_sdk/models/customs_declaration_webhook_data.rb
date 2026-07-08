# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Customs declaration payload delivered in `customs_declaration_finished`
  # webhooks. Platform-level deliveries may include `platform_id` and
  # `updated_on`.
  class CustomsDeclarationWebhookData < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Customs declaration identifier.
    # @return [UUID | String]
    attr_accessor :id

    # Charge identifier associated with the declaration.
    # @return [UUID | String]
    attr_accessor :charge_id

    # Merchant identifier.
    # @return [UUID | String]
    attr_accessor :merchant_id

    # Store identifier.
    # @return [UUID | String]
    attr_accessor :store_id

    # Platform identifier, included on platform-level deliveries.
    # @return [UUID | String]
    attr_accessor :platform_id

    # Processing mode.
    # @return [String]
    attr_accessor :mode

    # Gateway that processed the declaration.
    # @return [String]
    attr_accessor :gateway

    # WeChat customs declaration payload returned by the backend formatter.
    # @return [CustomsDeclarationWebhookDeclaration]
    attr_accessor :declaration

    # Result payload returned by the customs declaration formatter.
    # @return [CustomsDeclarationWebhookResult]
    attr_accessor :declaration_result

    # Customs declaration status returned by the backend.
    # @return [CustomsDeclarationWebhookStatus]
    attr_accessor :status

    # Error payload returned when customs declaration processing fails.
    # @return [CustomsDeclarationWebhookError]
    attr_accessor :error

    # Timestamp when the declaration was created.
    # @return [DateTime]
    attr_accessor :created_on

    # Timestamp when the declaration was last updated, included on
    # platform-level deliveries.
    # @return [DateTime]
    attr_accessor :updated_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['charge_id'] = 'charge_id'
      @_hash['merchant_id'] = 'merchant_id'
      @_hash['store_id'] = 'store_id'
      @_hash['platform_id'] = 'platform_id'
      @_hash['mode'] = 'mode'
      @_hash['gateway'] = 'gateway'
      @_hash['declaration'] = 'declaration'
      @_hash['declaration_result'] = 'declaration_result'
      @_hash['status'] = 'status'
      @_hash['error'] = 'error'
      @_hash['created_on'] = 'created_on'
      @_hash['updated_on'] = 'updated_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        charge_id
        merchant_id
        store_id
        platform_id
        mode
        gateway
        declaration
        declaration_result
        status
        error
        created_on
        updated_on
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        platform_id
        declaration_result
        error
        updated_on
      ]
    end

    def initialize(id: SKIP, charge_id: SKIP, merchant_id: SKIP, store_id: SKIP,
                   platform_id: SKIP, mode: SKIP, gateway: SKIP,
                   declaration: SKIP, declaration_result: SKIP, status: SKIP,
                   error: SKIP, created_on: SKIP, updated_on: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @charge_id = charge_id unless charge_id == SKIP
      @merchant_id = merchant_id unless merchant_id == SKIP
      @store_id = store_id unless store_id == SKIP
      @platform_id = platform_id unless platform_id == SKIP
      @mode = mode unless mode == SKIP
      @gateway = gateway unless gateway == SKIP
      @declaration = declaration unless declaration == SKIP
      @declaration_result = declaration_result unless declaration_result == SKIP
      @status = status unless status == SKIP
      @error = error unless error == SKIP
      @created_on = created_on unless created_on == SKIP
      @updated_on = updated_on unless updated_on == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      charge_id = hash.key?('charge_id') ? hash['charge_id'] : SKIP
      merchant_id = hash.key?('merchant_id') ? hash['merchant_id'] : SKIP
      store_id = hash.key?('store_id') ? hash['store_id'] : SKIP
      platform_id = hash.key?('platform_id') ? hash['platform_id'] : SKIP
      mode = hash.key?('mode') ? hash['mode'] : SKIP
      gateway = hash.key?('gateway') ? hash['gateway'] : SKIP
      declaration = CustomsDeclarationWebhookDeclaration.from_hash(hash['declaration']) if
        hash['declaration']
      declaration_result = CustomsDeclarationWebhookResult.from_hash(hash['declaration_result']) if
        hash['declaration_result']
      status = hash.key?('status') ? hash['status'] : SKIP
      error = CustomsDeclarationWebhookError.from_hash(hash['error']) if hash['error']
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end
      updated_on = if hash.key?('updated_on')
                     (DateTimeHelper.from_rfc3339(hash['updated_on']) if hash['updated_on'])
                   else
                     SKIP
                   end

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      CustomsDeclarationWebhookData.new(id: id,
                                        charge_id: charge_id,
                                        merchant_id: merchant_id,
                                        store_id: store_id,
                                        platform_id: platform_id,
                                        mode: mode,
                                        gateway: gateway,
                                        declaration: declaration,
                                        declaration_result: declaration_result,
                                        status: status,
                                        error: error,
                                        created_on: created_on,
                                        updated_on: updated_on,
                                        additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    def to_custom_updated_on
      DateTimeHelper.to_rfc3339(updated_on)
    end

    # Validates an instance of the object from a given value.
    # @param [CustomsDeclarationWebhookData | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, charge_id: #{@charge_id}, merchant_id: #{@merchant_id},"\
      " store_id: #{@store_id}, platform_id: #{@platform_id}, mode: #{@mode}, gateway:"\
      " #{@gateway}, declaration: #{@declaration}, declaration_result: #{@declaration_result},"\
      " status: #{@status}, error: #{@error}, created_on: #{@created_on}, updated_on:"\
      " #{@updated_on}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, charge_id: #{@charge_id.inspect}, merchant_id:"\
      " #{@merchant_id.inspect}, store_id: #{@store_id.inspect}, platform_id:"\
      " #{@platform_id.inspect}, mode: #{@mode.inspect}, gateway: #{@gateway.inspect},"\
      " declaration: #{@declaration.inspect}, declaration_result: #{@declaration_result.inspect},"\
      " status: #{@status.inspect}, error: #{@error.inspect}, created_on: #{@created_on.inspect},"\
      " updated_on: #{@updated_on.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
