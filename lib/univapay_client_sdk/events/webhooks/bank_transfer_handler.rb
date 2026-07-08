# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # BankTransferHandler is responsible for verifying request signatures
  # and parsing incoming bank-transfer events into strongly typed objects.
  class BankTransferHandler
    include CoreLibrary
    # Creates a new instance of the BankTransferHandler.
    def initialize; end

    # Parse the event.
    #
    # @param [Rack::Request] request The incoming HTTP request containing the event payload.
    # @return[BankTransferStatusWebhookCallback, UnknownEvent]
    # BankTransferStatusWebhookCallback for successful parsing;
    #
    # UnknownEvent for unknown events.
    def parse_event(request)
      return UnknownEvent.new(['Invalid request env.']) unless request.respond_to?(:env) && request.env.is_a?(Hash)

      raw_body = RackRequestHelper.read_raw_body(request)
      return UnknownEvent.new(['Invalid request body.']) if raw_body.nil? || raw_body.empty?

      # Deserialize payload
      begin
        union = UnionTypeLookUp.get(:BankTransfer)
        raw = RackRequestHelper.read_raw_body(request)
        APIHelper.deserialize_union_type(union, raw, false, true)
      rescue StandardError => e
        UnknownEvent.new(['Deserialization failed.', e.message])
      end
    end
  end
end
