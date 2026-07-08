# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Represents the generic logger facade
  class AbstractLogger < Logger
    # Logs a message with a specified log level and additional parameters.
    # @param level [Symbol] The log level of the message.
    # @param message [String] The message to log.
    # @param params [Hash] Additional parameters to include in the log message.
    def log(level, message, params)
      raise NotImplementedError, 'This method needs to be implemented in a child class.'
    end
  end
end
