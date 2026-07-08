# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Merchant configuration object serialized by gyron-payments-api.
  class MerchantWebhookConfiguration < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Default percent fee applied when no card-brand override exists.
    # @return [Float]
    attr_accessor :percent_fee

    # Flat fee overrides by currency.
    # @return [Array[MerchantWebhookMoneyAmount]]
    attr_accessor :flat_fees

    # Merchant logo URL.
    # @return [String]
    attr_accessor :logo_url

    # Merchant country code.
    # @return [String]
    attr_accessor :country

    # Merchant default language.
    # @return [String]
    attr_accessor :language

    # Merchant display time zone.
    # @return [String]
    attr_accessor :display_time_zone

    # Monetary amount object serialized by backend config models.
    # @return [MerchantWebhookMoneyAmount]
    attr_accessor :min_transfer_payout

    # Minimum allowed charge amounts by currency.
    # @return [Array[MerchantWebhookMoneyAmount]]
    attr_accessor :minimum_charge_amounts

    # Maximum allowed charge amounts by currency.
    # @return [Array[MerchantWebhookMoneyAmount]]
    attr_accessor :maximum_charge_amounts

    # Transfer schedule configuration inherited by the merchant.
    # @return [MerchantWebhookTransferScheduleConfiguration]
    attr_accessor :transfer_schedule

    # Merchant transaction notification settings.
    # @return [MerchantWebhookUserTransactionsConfiguration]
    attr_accessor :user_transactions_configuration

    # Recurring token configuration inherited by the merchant.
    # @return [MerchantWebhookRecurringTokenConfiguration]
    attr_accessor :recurring_token_configuration

    # Merchant-level fraud and refund safety settings.
    # @return [MerchantWebhookSecurityConfiguration]
    attr_accessor :security_configuration

    # Checkout field collection settings.
    # @return [MerchantWebhookCheckoutConfiguration]
    attr_accessor :checkout_configuration

    # Installment plan configuration.
    # @return [MerchantWebhookInstallmentPlanConfiguration]
    attr_accessor :installments_configuration

    # Subscription plan configuration.
    # @return [MerchantWebhookSubscriptionPlanConfiguration]
    attr_accessor :subscription_plan_configuration

    # Per-card-brand percent fee overrides.
    # @return [MerchantWebhookCardBrandPercentFees]
    attr_accessor :card_brand_percent_fees

    # Subscription feature configuration.
    # @return [MerchantWebhookSubscriptionConfiguration]
    attr_accessor :subscription_configuration

    # Customer-management defaults.
    # @return [MerchantWebhookCustomerManagementConfiguration]
    attr_accessor :customer_management_configuration

    # Whether statement descriptors can be provided by merchants.
    # @return [TrueClass | FalseClass]
    attr_accessor :descriptor_provided_configuration

    # Card payment settings.
    # @return [MerchantWebhookCardConfiguration]
    attr_accessor :card_configuration

    # QR scan payment settings.
    # @return [MerchantWebhookQrScanConfiguration]
    attr_accessor :qr_scan_configuration

    # Convenience-store payment settings.
    # @return [MerchantWebhookConvenienceConfiguration]
    attr_accessor :convenience_configuration

    # Paidy payment settings.
    # @return [MerchantWebhookPaidyConfiguration]
    attr_accessor :paidy_configuration

    # QR merchant payment settings.
    # @return [MerchantWebhookQrMerchantConfiguration]
    attr_accessor :qr_merchant_configuration

    # Online payment settings.
    # @return [MerchantWebhookOnlineConfiguration]
    attr_accessor :online_configuration

    # Bank transfer payment settings.
    # @return [MerchantWebhookBankTransferConfiguration]
    attr_accessor :bank_transfer_configuration

    # Whether platform credentials are enabled.
    # @return [TrueClass | FalseClass]
    attr_accessor :platform_credentials_enabled

    # Whether tagged platform credentials are enabled.
    # @return [TrueClass | FalseClass]
    attr_accessor :tagged_platform_credentials_enabled

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['percent_fee'] = 'percent_fee'
      @_hash['flat_fees'] = 'flat_fees'
      @_hash['logo_url'] = 'logo_url'
      @_hash['country'] = 'country'
      @_hash['language'] = 'language'
      @_hash['display_time_zone'] = 'display_time_zone'
      @_hash['min_transfer_payout'] = 'min_transfer_payout'
      @_hash['minimum_charge_amounts'] = 'minimum_charge_amounts'
      @_hash['maximum_charge_amounts'] = 'maximum_charge_amounts'
      @_hash['transfer_schedule'] = 'transfer_schedule'
      @_hash['user_transactions_configuration'] =
        'user_transactions_configuration'
      @_hash['recurring_token_configuration'] =
        'recurring_token_configuration'
      @_hash['security_configuration'] = 'security_configuration'
      @_hash['checkout_configuration'] = 'checkout_configuration'
      @_hash['installments_configuration'] = 'installments_configuration'
      @_hash['subscription_plan_configuration'] =
        'subscription_plan_configuration'
      @_hash['card_brand_percent_fees'] = 'card_brand_percent_fees'
      @_hash['subscription_configuration'] = 'subscription_configuration'
      @_hash['customer_management_configuration'] =
        'customer_management_configuration'
      @_hash['descriptor_provided_configuration'] =
        'descriptor_provided_configuration'
      @_hash['card_configuration'] = 'card_configuration'
      @_hash['qr_scan_configuration'] = 'qr_scan_configuration'
      @_hash['convenience_configuration'] = 'convenience_configuration'
      @_hash['paidy_configuration'] = 'paidy_configuration'
      @_hash['qr_merchant_configuration'] = 'qr_merchant_configuration'
      @_hash['online_configuration'] = 'online_configuration'
      @_hash['bank_transfer_configuration'] = 'bank_transfer_configuration'
      @_hash['platform_credentials_enabled'] = 'platform_credentials_enabled'
      @_hash['tagged_platform_credentials_enabled'] =
        'tagged_platform_credentials_enabled'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        percent_fee
        flat_fees
        logo_url
        country
        language
        display_time_zone
        min_transfer_payout
        minimum_charge_amounts
        maximum_charge_amounts
        transfer_schedule
        user_transactions_configuration
        recurring_token_configuration
        security_configuration
        checkout_configuration
        installments_configuration
        subscription_plan_configuration
        card_brand_percent_fees
        subscription_configuration
        customer_management_configuration
        descriptor_provided_configuration
        card_configuration
        qr_scan_configuration
        convenience_configuration
        paidy_configuration
        qr_merchant_configuration
        online_configuration
        bank_transfer_configuration
        platform_credentials_enabled
        tagged_platform_credentials_enabled
      ]
    end

    # An array for nullable fields
    def self.nullables
      %w[
        percent_fee
        logo_url
        country
        language
        display_time_zone
        descriptor_provided_configuration
        platform_credentials_enabled
        tagged_platform_credentials_enabled
      ]
    end

    def initialize(percent_fee: SKIP, flat_fees: SKIP, logo_url: SKIP,
                   country: SKIP, language: SKIP, display_time_zone: SKIP,
                   min_transfer_payout: SKIP, minimum_charge_amounts: SKIP,
                   maximum_charge_amounts: SKIP, transfer_schedule: SKIP,
                   user_transactions_configuration: SKIP,
                   recurring_token_configuration: SKIP,
                   security_configuration: SKIP, checkout_configuration: SKIP,
                   installments_configuration: SKIP,
                   subscription_plan_configuration: SKIP,
                   card_brand_percent_fees: SKIP,
                   subscription_configuration: SKIP,
                   customer_management_configuration: SKIP,
                   descriptor_provided_configuration: SKIP,
                   card_configuration: SKIP, qr_scan_configuration: SKIP,
                   convenience_configuration: SKIP, paidy_configuration: SKIP,
                   qr_merchant_configuration: SKIP, online_configuration: SKIP,
                   bank_transfer_configuration: SKIP,
                   platform_credentials_enabled: SKIP,
                   tagged_platform_credentials_enabled: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @percent_fee = percent_fee unless percent_fee == SKIP
      @flat_fees = flat_fees unless flat_fees == SKIP
      @logo_url = logo_url unless logo_url == SKIP
      @country = country unless country == SKIP
      @language = language unless language == SKIP
      @display_time_zone = display_time_zone unless display_time_zone == SKIP
      @min_transfer_payout = min_transfer_payout unless min_transfer_payout == SKIP
      @minimum_charge_amounts = minimum_charge_amounts unless minimum_charge_amounts == SKIP
      @maximum_charge_amounts = maximum_charge_amounts unless maximum_charge_amounts == SKIP
      @transfer_schedule = transfer_schedule unless transfer_schedule == SKIP
      unless user_transactions_configuration == SKIP
        @user_transactions_configuration =
          user_transactions_configuration
      end
      unless recurring_token_configuration == SKIP
        @recurring_token_configuration =
          recurring_token_configuration
      end
      @security_configuration = security_configuration unless security_configuration == SKIP
      @checkout_configuration = checkout_configuration unless checkout_configuration == SKIP
      unless installments_configuration == SKIP
        @installments_configuration =
          installments_configuration
      end
      unless subscription_plan_configuration == SKIP
        @subscription_plan_configuration =
          subscription_plan_configuration
      end
      @card_brand_percent_fees = card_brand_percent_fees unless card_brand_percent_fees == SKIP
      unless subscription_configuration == SKIP
        @subscription_configuration =
          subscription_configuration
      end
      unless customer_management_configuration == SKIP
        @customer_management_configuration =
          customer_management_configuration
      end
      unless descriptor_provided_configuration == SKIP
        @descriptor_provided_configuration =
          descriptor_provided_configuration
      end
      @card_configuration = card_configuration unless card_configuration == SKIP
      @qr_scan_configuration = qr_scan_configuration unless qr_scan_configuration == SKIP
      unless convenience_configuration == SKIP
        @convenience_configuration =
          convenience_configuration
      end
      @paidy_configuration = paidy_configuration unless paidy_configuration == SKIP
      unless qr_merchant_configuration == SKIP
        @qr_merchant_configuration =
          qr_merchant_configuration
      end
      @online_configuration = online_configuration unless online_configuration == SKIP
      unless bank_transfer_configuration == SKIP
        @bank_transfer_configuration =
          bank_transfer_configuration
      end
      unless platform_credentials_enabled == SKIP
        @platform_credentials_enabled =
          platform_credentials_enabled
      end
      unless tagged_platform_credentials_enabled == SKIP
        @tagged_platform_credentials_enabled =
          tagged_platform_credentials_enabled
      end
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      percent_fee = hash.key?('percent_fee') ? hash['percent_fee'] : SKIP
      # Parameter is an array, so we need to iterate through it
      flat_fees = nil
      unless hash['flat_fees'].nil?
        flat_fees = []
        hash['flat_fees'].each do |structure|
          flat_fees << (MerchantWebhookMoneyAmount.from_hash(structure) if structure)
        end
      end

      flat_fees = SKIP unless hash.key?('flat_fees')
      logo_url = hash.key?('logo_url') ? hash['logo_url'] : SKIP
      country = hash.key?('country') ? hash['country'] : SKIP
      language = hash.key?('language') ? hash['language'] : SKIP
      display_time_zone =
        hash.key?('display_time_zone') ? hash['display_time_zone'] : SKIP
      min_transfer_payout = MerchantWebhookMoneyAmount.from_hash(hash['min_transfer_payout']) if
        hash['min_transfer_payout']
      # Parameter is an array, so we need to iterate through it
      minimum_charge_amounts = nil
      unless hash['minimum_charge_amounts'].nil?
        minimum_charge_amounts = []
        hash['minimum_charge_amounts'].each do |structure|
          minimum_charge_amounts << (MerchantWebhookMoneyAmount.from_hash(structure) if structure)
        end
      end

      minimum_charge_amounts = SKIP unless hash.key?('minimum_charge_amounts')
      # Parameter is an array, so we need to iterate through it
      maximum_charge_amounts = nil
      unless hash['maximum_charge_amounts'].nil?
        maximum_charge_amounts = []
        hash['maximum_charge_amounts'].each do |structure|
          maximum_charge_amounts << (MerchantWebhookMoneyAmount.from_hash(structure) if structure)
        end
      end

      maximum_charge_amounts = SKIP unless hash.key?('maximum_charge_amounts')
      if hash['transfer_schedule']
        transfer_schedule = MerchantWebhookTransferScheduleConfiguration.from_hash(hash['transfer_schedule'])
      end
      if hash['user_transactions_configuration']
        user_transactions_configuration = MerchantWebhookUserTransactionsConfiguration.from_hash(hash['user_transactions_configuration'])
      end
      if hash['recurring_token_configuration']
        recurring_token_configuration = MerchantWebhookRecurringTokenConfiguration.from_hash(hash['recurring_token_configuration'])
      end
      if hash['security_configuration']
        security_configuration = MerchantWebhookSecurityConfiguration.from_hash(hash['security_configuration'])
      end
      if hash['checkout_configuration']
        checkout_configuration = MerchantWebhookCheckoutConfiguration.from_hash(hash['checkout_configuration'])
      end
      if hash['installments_configuration']
        installments_configuration = MerchantWebhookInstallmentPlanConfiguration.from_hash(hash['installments_configuration'])
      end
      if hash['subscription_plan_configuration']
        subscription_plan_configuration = MerchantWebhookSubscriptionPlanConfiguration.from_hash(hash['subscription_plan_configuration'])
      end
      if hash['card_brand_percent_fees']
        card_brand_percent_fees = MerchantWebhookCardBrandPercentFees.from_hash(hash['card_brand_percent_fees'])
      end
      if hash['subscription_configuration']
        subscription_configuration = MerchantWebhookSubscriptionConfiguration.from_hash(hash['subscription_configuration'])
      end
      if hash['customer_management_configuration']
        customer_management_configuration = MerchantWebhookCustomerManagementConfiguration.from_hash(hash['customer_management_configuration'])
      end
      descriptor_provided_configuration =
        hash.key?('descriptor_provided_configuration') ? hash['descriptor_provided_configuration'] : SKIP
      card_configuration = MerchantWebhookCardConfiguration.from_hash(hash['card_configuration']) if
        hash['card_configuration']
      if hash['qr_scan_configuration']
        qr_scan_configuration = MerchantWebhookQrScanConfiguration.from_hash(hash['qr_scan_configuration'])
      end
      if hash['convenience_configuration']
        convenience_configuration = MerchantWebhookConvenienceConfiguration.from_hash(hash['convenience_configuration'])
      end
      if hash['paidy_configuration']
        paidy_configuration = MerchantWebhookPaidyConfiguration.from_hash(hash['paidy_configuration'])
      end
      if hash['qr_merchant_configuration']
        qr_merchant_configuration = MerchantWebhookQrMerchantConfiguration.from_hash(hash['qr_merchant_configuration'])
      end
      if hash['online_configuration']
        online_configuration = MerchantWebhookOnlineConfiguration.from_hash(hash['online_configuration'])
      end
      if hash['bank_transfer_configuration']
        bank_transfer_configuration = MerchantWebhookBankTransferConfiguration.from_hash(hash['bank_transfer_configuration'])
      end
      platform_credentials_enabled =
        hash.key?('platform_credentials_enabled') ? hash['platform_credentials_enabled'] : SKIP
      tagged_platform_credentials_enabled =
        hash.key?('tagged_platform_credentials_enabled') ? hash['tagged_platform_credentials_enabled'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      MerchantWebhookConfiguration.new(percent_fee: percent_fee,
                                       flat_fees: flat_fees,
                                       logo_url: logo_url,
                                       country: country,
                                       language: language,
                                       display_time_zone: display_time_zone,
                                       min_transfer_payout: min_transfer_payout,
                                       minimum_charge_amounts: minimum_charge_amounts,
                                       maximum_charge_amounts: maximum_charge_amounts,
                                       transfer_schedule: transfer_schedule,
                                       user_transactions_configuration: user_transactions_configuration,
                                       recurring_token_configuration: recurring_token_configuration,
                                       security_configuration: security_configuration,
                                       checkout_configuration: checkout_configuration,
                                       installments_configuration: installments_configuration,
                                       subscription_plan_configuration: subscription_plan_configuration,
                                       card_brand_percent_fees: card_brand_percent_fees,
                                       subscription_configuration: subscription_configuration,
                                       customer_management_configuration: customer_management_configuration,
                                       descriptor_provided_configuration: descriptor_provided_configuration,
                                       card_configuration: card_configuration,
                                       qr_scan_configuration: qr_scan_configuration,
                                       convenience_configuration: convenience_configuration,
                                       paidy_configuration: paidy_configuration,
                                       qr_merchant_configuration: qr_merchant_configuration,
                                       online_configuration: online_configuration,
                                       bank_transfer_configuration: bank_transfer_configuration,
                                       platform_credentials_enabled: platform_credentials_enabled,
                                       tagged_platform_credentials_enabled: tagged_platform_credentials_enabled,
                                       additional_properties: additional_properties)
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} percent_fee: #{@percent_fee}, flat_fees: #{@flat_fees}, logo_url:"\
      " #{@logo_url}, country: #{@country}, language: #{@language}, display_time_zone:"\
      " #{@display_time_zone}, min_transfer_payout: #{@min_transfer_payout},"\
      " minimum_charge_amounts: #{@minimum_charge_amounts}, maximum_charge_amounts:"\
      " #{@maximum_charge_amounts}, transfer_schedule: #{@transfer_schedule},"\
      " user_transactions_configuration: #{@user_transactions_configuration},"\
      " recurring_token_configuration: #{@recurring_token_configuration}, security_configuration:"\
      " #{@security_configuration}, checkout_configuration: #{@checkout_configuration},"\
      " installments_configuration: #{@installments_configuration},"\
      " subscription_plan_configuration: #{@subscription_plan_configuration},"\
      " card_brand_percent_fees: #{@card_brand_percent_fees}, subscription_configuration:"\
      " #{@subscription_configuration}, customer_management_configuration:"\
      " #{@customer_management_configuration}, descriptor_provided_configuration:"\
      " #{@descriptor_provided_configuration}, card_configuration: #{@card_configuration},"\
      " qr_scan_configuration: #{@qr_scan_configuration}, convenience_configuration:"\
      " #{@convenience_configuration}, paidy_configuration: #{@paidy_configuration},"\
      " qr_merchant_configuration: #{@qr_merchant_configuration}, online_configuration:"\
      " #{@online_configuration}, bank_transfer_configuration: #{@bank_transfer_configuration},"\
      " platform_credentials_enabled: #{@platform_credentials_enabled},"\
      " tagged_platform_credentials_enabled: #{@tagged_platform_credentials_enabled},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} percent_fee: #{@percent_fee.inspect}, flat_fees: #{@flat_fees.inspect},"\
      " logo_url: #{@logo_url.inspect}, country: #{@country.inspect}, language:"\
      " #{@language.inspect}, display_time_zone: #{@display_time_zone.inspect},"\
      " min_transfer_payout: #{@min_transfer_payout.inspect}, minimum_charge_amounts:"\
      " #{@minimum_charge_amounts.inspect}, maximum_charge_amounts:"\
      " #{@maximum_charge_amounts.inspect}, transfer_schedule: #{@transfer_schedule.inspect},"\
      " user_transactions_configuration: #{@user_transactions_configuration.inspect},"\
      " recurring_token_configuration: #{@recurring_token_configuration.inspect},"\
      " security_configuration: #{@security_configuration.inspect}, checkout_configuration:"\
      " #{@checkout_configuration.inspect}, installments_configuration:"\
      " #{@installments_configuration.inspect}, subscription_plan_configuration:"\
      " #{@subscription_plan_configuration.inspect}, card_brand_percent_fees:"\
      " #{@card_brand_percent_fees.inspect}, subscription_configuration:"\
      " #{@subscription_configuration.inspect}, customer_management_configuration:"\
      " #{@customer_management_configuration.inspect}, descriptor_provided_configuration:"\
      " #{@descriptor_provided_configuration.inspect}, card_configuration:"\
      " #{@card_configuration.inspect}, qr_scan_configuration: #{@qr_scan_configuration.inspect},"\
      " convenience_configuration: #{@convenience_configuration.inspect}, paidy_configuration:"\
      " #{@paidy_configuration.inspect}, qr_merchant_configuration:"\
      " #{@qr_merchant_configuration.inspect}, online_configuration:"\
      " #{@online_configuration.inspect}, bank_transfer_configuration:"\
      " #{@bank_transfer_configuration.inspect}, platform_credentials_enabled:"\
      " #{@platform_credentials_enabled.inspect}, tagged_platform_credentials_enabled:"\
      " #{@tagged_platform_credentials_enabled.inspect}, additional_properties:"\
      " #{@additional_properties}>"
    end
  end
end
