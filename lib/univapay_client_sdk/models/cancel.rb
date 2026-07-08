# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Represents a cancellation request for a charge.
  class Cancel < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Unique identifier for the cancel.
    # @return [UUID | String]
    attr_accessor :id

    # ID of the charge this cancel is associated with.
    # @return [UUID | String]
    attr_accessor :charge_id

    # ID of the store.
    # @return [UUID | String]
    attr_accessor :store_id

    # Current status of the cancel operation.
    # @return [CancelStatus]
    attr_accessor :status

    # Payment error details, or null if successful.
    # @return [PaymentError]
    attr_accessor :error

    # A free-form dictionary for custom metadata.
    # @return [GenericMetadata]
    attr_accessor :metadata

    # Charge Mode schema.
    # @return [ChargeMode]
    attr_accessor :mode

    # Timestamp when the cancel was created.
    # @return [DateTime]
    attr_accessor :created_on

    # Timestamp when the cancel was last updated.
    # @return [DateTime]
    attr_accessor :updated_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['charge_id'] = 'charge_id'
      @_hash['store_id'] = 'store_id'
      @_hash['status'] = 'status'
      @_hash['error'] = 'error'
      @_hash['metadata'] = 'metadata'
      @_hash['mode'] = 'mode'
      @_hash['created_on'] = 'created_on'
      @_hash['updated_on'] = 'updated_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        charge_id
        store_id
        status
        error
        metadata
        mode
        created_on
        updated_on
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        error
      ]
    end

    def initialize(id: SKIP, charge_id: SKIP, store_id: SKIP, status: SKIP,
                   error: SKIP, metadata: SKIP, mode: SKIP, created_on: SKIP,
                   updated_on: SKIP, additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @charge_id = charge_id unless charge_id == SKIP
      @store_id = store_id unless store_id == SKIP
      @status = status unless status == SKIP
      @error = error unless error == SKIP
      @metadata = metadata unless metadata == SKIP
      @mode = mode unless mode == SKIP
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
      store_id = hash.key?('store_id') ? hash['store_id'] : SKIP
      status = hash.key?('status') ? hash['status'] : SKIP
      error = PaymentError.from_hash(hash['error']) if hash['error']
      metadata = GenericMetadata.from_hash(hash['metadata']) if hash['metadata']
      mode = hash.key?('mode') ? hash['mode'] : SKIP
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
      Cancel.new(id: id,
                 charge_id: charge_id,
                 store_id: store_id,
                 status: status,
                 error: error,
                 metadata: metadata,
                 mode: mode,
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
    # @param [Cancel | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, charge_id: #{@charge_id}, store_id: #{@store_id}, status:"\
      " #{@status}, error: #{@error}, metadata: #{@metadata}, mode: #{@mode}, created_on:"\
      " #{@created_on}, updated_on: #{@updated_on}, additional_properties:"\
      " #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, charge_id: #{@charge_id.inspect}, store_id:"\
      " #{@store_id.inspect}, status: #{@status.inspect}, error: #{@error.inspect}, metadata:"\
      " #{@metadata.inspect}, mode: #{@mode.inspect}, created_on: #{@created_on.inspect},"\
      " updated_on: #{@updated_on.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
