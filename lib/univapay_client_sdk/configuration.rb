# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # An enum for SDK environments.
  class Environment
    # PRODUCTION: Production Server
    ENVIRONMENT = [
      PRODUCTION = 'production'.freeze
    ].freeze

    # Converts a string or symbol into a valid Environment constant.
    def self.from_value(value, default_value = PRODUCTION)
      return default_value if value.nil?

      default_value
    end
  end

  # An enum for API servers.
  class Server
    SERVER = [
      DEFAULT = 'default'.freeze
    ].freeze

    # Converts a string or symbol into a valid Server constant.
    def self.from_value(value, default_value = DEFAULT)
      return default_value if value.nil?

      default_value
    end
  end

  # All configuration including auth info and base URI for the API access
  # are configured in this class.
  class Configuration < CoreLibrary::HttpClientConfiguration
    # The attribute readers for properties.
    attr_reader :environment, :base_url, :bearer_auth_credentials

    class << self
      attr_reader :environments
    end

    def initialize(
      connection: nil, adapter: :net_http_persistent, timeout: 30,
      max_retries: 0, retry_interval: 1, backoff_factor: 2,
      retry_statuses: [408, 413, 429, 500, 502, 503, 504, 521, 522, 524],
      retry_methods: %i[get put], http_callback: nil, proxy_settings: nil,
      logging_configuration: nil, environment: Environment::PRODUCTION,
      base_url: 'https://api.univapay.com', bearer_auth_credentials: nil
    )
      super connection: connection, adapter: adapter, timeout: timeout,
            max_retries: max_retries, retry_interval: retry_interval,
            backoff_factor: backoff_factor, retry_statuses: retry_statuses,
            retry_methods: retry_methods, http_callback: http_callback,
            proxy_settings: proxy_settings,
            logging_configuration: logging_configuration

      # Current API environment
      @environment = String(environment)

      # Base URL for the API
      @base_url = base_url

      # The object holding OAuth 2 Bearer token credentials
      @bearer_auth_credentials = bearer_auth_credentials

      # Initializing OAuth 2 Bearer token credentials with the provided auth parameters
      @bearer_auth_credentials = bearer_auth_credentials

      # The Http Client to use for making requests.
      set_http_client CoreLibrary::FaradayClient.new(self)
    end

    def clone_with(connection: nil, adapter: nil, timeout: nil,
                   max_retries: nil, retry_interval: nil, backoff_factor: nil,
                   retry_statuses: nil, retry_methods: nil, http_callback: nil,
                   proxy_settings: nil, logging_configuration: nil,
                   environment: nil, base_url: nil,
                   bearer_auth_credentials: nil)
      connection ||= self.connection
      adapter ||= self.adapter
      timeout ||= self.timeout
      max_retries ||= self.max_retries
      retry_interval ||= self.retry_interval
      backoff_factor ||= self.backoff_factor
      retry_statuses ||= self.retry_statuses
      retry_methods ||= self.retry_methods
      http_callback ||= self.http_callback
      proxy_settings ||= self.proxy_settings
      logging_configuration ||= self.logging_configuration
      environment ||= self.environment
      base_url ||= self.base_url
      bearer_auth_credentials ||= self.bearer_auth_credentials

      Configuration.new(connection: connection, adapter: adapter,
                        timeout: timeout, max_retries: max_retries,
                        retry_interval: retry_interval,
                        backoff_factor: backoff_factor,
                        retry_statuses: retry_statuses,
                        retry_methods: retry_methods,
                        http_callback: http_callback,
                        proxy_settings: proxy_settings,
                        logging_configuration: logging_configuration,
                        environment: environment, base_url: base_url,
                        bearer_auth_credentials: bearer_auth_credentials)
    end


    # All the environments the SDK can run in.
    ENVIRONMENTS = {
      Environment::PRODUCTION => {
        Server::DEFAULT => '{baseUrl}'
      }
    }.freeze

    # Generates the appropriate base URI for the environment and the server.
    # @param [Configuration::Server] server The server enum for which the base URI is
    # required.
    # @return [String] The base URI.
    def get_base_uri(server = Server::DEFAULT)
      parameters = {
        'baseUrl' => { 'value' => base_url, 'encode' => false }
      }
      APIHelper.append_url_with_template_parameters(
        ENVIRONMENTS[environment][server], parameters
      )
    end

    # Builds a Configuration instance using environment variables.
    def self.build_default_config_from_env
      # === Core environment ===
      environment = Environment.from_value(ENV.fetch('ENVIRONMENT', 'production'))
      base_url = ENV.fetch('BASE_URL', 'https://api.univapay.com')
      timeout = (ENV['TIMEOUT'] || 30).to_f
      max_retries = (ENV['MAX_RETRIES'] || 0).to_i
      retry_interval = (ENV['RETRY_INTERVAL'] || 1).to_f
      backoff_factor = (ENV['BACKOFF_FACTOR'] || 2).to_f
      retry_statuses = ENV.fetch('RETRY_STATUSES',
                                 '[408, 413, 429, 500, 502, 503, 504, 521, 522, 524]').gsub(/[\[\]]/, '')
                                          .split(',')
                                          .map(&:strip)
                                          .map do |item|
                                            item.match?(/\A\d+\z/) ? item.to_i : item.downcase
                                          end
      retry_methods = ENV.fetch('RETRY_METHODS', '%i[get put]').gsub(/[\[\]]/, '')
                                          .split(',')
                                          .map(&:strip)
                                          .map do |item|
                                            item.match?(/\A\d+\z/) ? item.to_i : item.downcase
                                          end

      # === Authentication credentials ===
      bearer_auth_credentials = BearerAuthCredentials.from_env

      # === Proxy settings ===
      proxy_settings = ProxySettings.from_env
      # === Logging Configuration ===
      logging_configuration = LoggingConfiguration.from_env if LoggingConfiguration.any_logging_configured?

      Configuration.new(
        environment: environment,
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        retry_interval: retry_interval,
        backoff_factor: backoff_factor,
        retry_statuses: retry_statuses,
        retry_methods: retry_methods,
        bearer_auth_credentials: bearer_auth_credentials,
        proxy_settings: proxy_settings,
        logging_configuration: logging_configuration
      )
    end
  end
end
