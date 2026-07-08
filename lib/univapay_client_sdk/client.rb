# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  #  univapay_client_sdk client class.
  class Client
    include CoreLibrary
    attr_reader :config, :auth_managers

    def user_agent_detail
      config.user_agent_detail
    end

    # Access to charges controller.
    # @return [ChargesController] Returns the controller instance.
    def charges
      @charges ||= ChargesController.new @global_configuration
    end

    # Access to transaction_tokens controller.
    # @return [TransactionTokensController] Returns the controller instance.
    def transaction_tokens
      @transaction_tokens ||= TransactionTokensController.new @global_configuration
    end

    # Access to refunds controller.
    # @return [RefundsController] Returns the controller instance.
    def refunds
      @refunds ||= RefundsController.new @global_configuration
    end

    # Access to subscriptions controller.
    # @return [SubscriptionsController] Returns the controller instance.
    def subscriptions
      @subscriptions ||= SubscriptionsController.new @global_configuration
    end

    # Access to cancels controller.
    # @return [CancelsController] Returns the controller instance.
    def cancels
      @cancels ||= CancelsController.new @global_configuration
    end

    # Access to merchants controller.
    # @return [MerchantsController] Returns the controller instance.
    def merchants
      @merchants ||= MerchantsController.new @global_configuration
    end

    # Access to stores controller.
    # @return [StoresController] Returns the controller instance.
    def stores
      @stores ||= StoresController.new @global_configuration
    end

    # Access to webhooks controller.
    # @return [WebhooksController] Returns the controller instance.
    def webhooks
      @webhooks ||= WebhooksController.new @global_configuration
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 30,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put], http_callback: nil, proxy_settings: nil,
      logging_configuration: nil, environment: Environment::PRODUCTION,
      base_url: 'https://api.univapay.com', bearer_auth_credentials: nil,
      config: nil
    )
      @config = if config.nil?
                  Configuration.new(
                    connection: connection, adapter: adapter, timeout: timeout,
                    max_retries: max_retries, retry_interval: retry_interval,
                    backoff_factor: backoff_factor,
                    retry_statuses: retry_statuses,
                    retry_methods: retry_methods, http_callback: http_callback,
                    proxy_settings: proxy_settings,
                    logging_configuration: logging_configuration,
                    environment: environment, base_url: base_url,
                    bearer_auth_credentials: bearer_auth_credentials
                  )
                else
                  config
                end
      user_agent_params = BaseController.user_agent_parameters

      @global_configuration = GlobalConfiguration.new(client_configuration: @config)
                                                 .base_uri_executor(@config.method(:get_base_uri))
                                                 .global_errors(BaseController::GLOBAL_ERRORS)
                                                 .user_agent(BaseController.user_agent,
                                                             agent_parameters: user_agent_params)

      initialize_auth_managers(@global_configuration)
      @global_configuration = @global_configuration.auth_managers(@auth_managers)
    end

    # Initializes the auth managers hash used for authenticating API calls.
    # @param [GlobalConfiguration] global_config The global configuration of the SDK)
    def initialize_auth_managers(global_config)
      @auth_managers = {}
      http_client_config = global_config.client_configuration
      %w[JWT_TOKEN].each { |auth| @auth_managers[auth] = nil }
      @auth_managers['JWT_TOKEN'] = Oauth2.new(http_client_config.bearer_auth_credentials)
    end

    # Creates a client directly from environment variables.
    def self.from_env(**overrides)
      default_config = Configuration.build_default_config_from_env
      new_config = default_config.clone_with(**overrides)
      new(config: new_config)
    end
  end
end
