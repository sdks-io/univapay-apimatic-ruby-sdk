# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Token Response Card Data Cvv Authorize Check schema.
  class TokenResponseCardDataCvvAuthorizeCheck < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Current status of the resource.
    # @return [String]
    attr_accessor :status

    # Charge identifier.
    # @return [UUID | String]
    attr_accessor :charge_id

    # Date value.
    # @return [DateTime]
    attr_accessor :date

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['status'] = 'status'
      @_hash['charge_id'] = 'charge_id'
      @_hash['date'] = 'date'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        status
        charge_id
        date
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        status
        charge_id
        date
      ]
    end

    def initialize(status: SKIP, charge_id: SKIP, date: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @status = status unless status == SKIP
      @charge_id = charge_id unless charge_id == SKIP
      @date = date unless date == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      status = hash.key?('status') ? hash['status'] : SKIP
      charge_id = hash.key?('charge_id') ? hash['charge_id'] : SKIP
      date = if hash.key?('date')
               (DateTimeHelper.from_rfc3339(hash['date']) if hash['date'])
             else
               SKIP
             end

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      TokenResponseCardDataCvvAuthorizeCheck.new(status: status,
                                                 charge_id: charge_id,
                                                 date: date,
                                                 additional_properties: additional_properties)
    end

    def to_custom_date
      DateTimeHelper.to_rfc3339(date)
    end

    # Validates an instance of the object from a given value.
    # @param [TokenResponseCardDataCvvAuthorizeCheck | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} status: #{@status}, charge_id: #{@charge_id}, date: #{@date},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} status: #{@status.inspect}, charge_id: #{@charge_id.inspect}, date:"\
      " #{@date.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
