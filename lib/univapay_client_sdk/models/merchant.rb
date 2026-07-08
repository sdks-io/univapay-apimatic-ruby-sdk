# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'date'
module UnivapayClientSdk
  # Merchant resource returned by the backend `FullMerchantWithGroupRoles`
  # formatter for merchant-authenticated callers.
  class Merchant < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Merchant identifier.
    # @return [UUID | String]
    attr_accessor :id

    # Verification data identifier associated with the merchant.
    # @return [UUID | String]
    attr_accessor :verification_data_id

    # Merchant display name.
    # @return [String]
    attr_accessor :name

    # Primary merchant email address.
    # @return [String]
    attr_accessor :email

    # Merchant notification email address.
    # @return [String]
    attr_accessor :notification_email

    # Merchant finance notification email address.
    # @return [String]
    attr_accessor :finance_notification_email

    # Whether the merchant has completed verification.
    # @return [TrueClass | FalseClass]
    attr_accessor :verified

    # Merchant configuration snapshot serialized by gyron-payments-api.
    # @return [MerchantWebhookConfiguration]
    attr_accessor :configuration

    # Timestamp when the merchant was created.
    # @return [DateTime]
    attr_accessor :created_on

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['id'] = 'id'
      @_hash['verification_data_id'] = 'verification_data_id'
      @_hash['name'] = 'name'
      @_hash['email'] = 'email'
      @_hash['notification_email'] = 'notification_email'
      @_hash['finance_notification_email'] = 'finance_notification_email'
      @_hash['verified'] = 'verified'
      @_hash['configuration'] = 'configuration'
      @_hash['created_on'] = 'created_on'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        id
        verification_data_id
        name
        email
        notification_email
        finance_notification_email
        verified
        configuration
        created_on
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        verification_data_id
        notification_email
        finance_notification_email
      ]
    end

    def initialize(id: SKIP, verification_data_id: SKIP, name: SKIP,
                   email: SKIP, notification_email: SKIP,
                   finance_notification_email: SKIP, verified: SKIP,
                   configuration: SKIP, created_on: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @id = id unless id == SKIP
      @verification_data_id = verification_data_id unless verification_data_id == SKIP
      @name = name unless name == SKIP
      @email = email unless email == SKIP
      @notification_email = notification_email unless notification_email == SKIP
      unless finance_notification_email == SKIP
        @finance_notification_email =
          finance_notification_email
      end
      @verified = verified unless verified == SKIP
      @configuration = configuration unless configuration == SKIP
      @created_on = created_on unless created_on == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      id = hash.key?('id') ? hash['id'] : SKIP
      verification_data_id =
        hash.key?('verification_data_id') ? hash['verification_data_id'] : SKIP
      name = hash.key?('name') ? hash['name'] : SKIP
      email = hash.key?('email') ? hash['email'] : SKIP
      notification_email =
        hash.key?('notification_email') ? hash['notification_email'] : SKIP
      finance_notification_email =
        hash.key?('finance_notification_email') ? hash['finance_notification_email'] : SKIP
      verified = hash.key?('verified') ? hash['verified'] : SKIP
      configuration = MerchantWebhookConfiguration.from_hash(hash['configuration']) if
        hash['configuration']
      created_on = if hash.key?('created_on')
                     (DateTimeHelper.from_rfc3339(hash['created_on']) if hash['created_on'])
                   else
                     SKIP
                   end

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      Merchant.new(id: id,
                   verification_data_id: verification_data_id,
                   name: name,
                   email: email,
                   notification_email: notification_email,
                   finance_notification_email: finance_notification_email,
                   verified: verified,
                   configuration: configuration,
                   created_on: created_on,
                   additional_properties: additional_properties)
    end

    def to_custom_created_on
      DateTimeHelper.to_rfc3339(created_on)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id}, verification_data_id: #{@verification_data_id}, name: #{@name},"\
      " email: #{@email}, notification_email: #{@notification_email}, finance_notification_email:"\
      " #{@finance_notification_email}, verified: #{@verified}, configuration: #{@configuration},"\
      " created_on: #{@created_on}, additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} id: #{@id.inspect}, verification_data_id: #{@verification_data_id.inspect},"\
      " name: #{@name.inspect}, email: #{@email.inspect}, notification_email:"\
      " #{@notification_email.inspect}, finance_notification_email:"\
      " #{@finance_notification_email.inspect}, verified: #{@verified.inspect}, configuration:"\
      " #{@configuration.inspect}, created_on: #{@created_on.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
