# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Payment errors that occur during resource processing (like Charges or
  # Refunds). The HTTP status will return success (2xx), but the resource
  # `status` will be `failed`, and this object will be populated.
  class PaymentError < BaseModel
    SKIP = Object.new
    private_constant :SKIP

    # Payment Error Codes.
    # | Code | Description |
    # | :--- | :--- |
    # | 301 | Card number error. |
    # | 302 | Invalid expiration month. |
    # | 303 | Invalid expiration year. |
    # | 304 | Card expired. |
    # | 305 | Security code (CVV) error. |
    # | 306 | Card declined (authorization screening error). |
    # | 307 | Invalid card. |
    # | 308 | This card has not been approved by the card company. |
    # | 309 | General error occurred. Detailed information can be confirmed in
    # the dashboard. |
    # | 310 | Invalid consumer data (invalid request data). |
    # | 311 | Too many charges on the same card in a short period. Please wait
    # and try again. |
    # | 312 | This charge cannot be canceled. |
    # | 313 | Authorization expired (during charge capture). |
    # | 314 | This card has been reported stolen or invalidated by the issuer. |
    # | 315 | Please contact the card issuer. |
    # | 316 | Cardholder's last name is required. |
    # | 317 | Partial capture is not supported. |
    # | 318 | Partial refund is not supported. |
    # | 319 | Suspected fraud (security restriction). |
    # | 320 | An error occurred in the bank's system. |
    # | 321 | Dynamic descriptor is not supported. |
    # | 322 | Barcode/QR code is invalid. |
    # | 323 | Barcode/QR code has expired. |
    # | 324 | This barcode/QR code has already been processed. |
    # | 325 | This barcode/QR code is currently being processed. |
    # | 326 | Rejected due to a high-risk profile. |
    # | 327 | Payment deadline (5-minute timeout) has expired. |
    # | 328 | Recovery failed. Manual intervention is required. |
    # | 329 | Refund failed. |
    # | 330 | Insufficient funds. |
    # | 331 | Metadata field value is invalid or missing. |
    # | 332 | Cross-border transaction not permitted: missing ID. |
    # | 333 | Cross-border transaction not permitted: missing phone number. |
    # | 334 | Cross-border transaction not permitted: unauthorized payment
    # method. |
    # | 335 | Cross-border transaction not permitted: missing name. |
    # | 336 | Exceeded the payment limit for this payment method. |
    # | 337 | Exceeded the payment limit for this merchant. |
    # | 338 | Payment information not found. |
    # | 339 | Duplicate payment information. |
    # | 340 | This consumer's retail QR account was rejected by the gateway. |
    # | 341 | This merchant lacks the necessary information for this gateway. |
    # | 342 | Cross-border transaction not permitted: unauthorized currency. |
    # | 343 | Payment could not be processed due to a server error at the
    # gateway. |
    # | 344 | The selected payment method is temporarily unavailable from the
    # gateway. |
    # | 345 | The payment has already been canceled. |
    # | 346 | Payment processing timed out due to system delay and was canceled.
    # |
    # | 351 | Invalid transaction. |
    # | 355 | The card does not support the specified payment division (e.g.,
    # installments). |
    # | 356 | The card is not registered for 3D Secure. |
    # | 358 | 3D Secure authentication failed (consumer reason, e.g., wrong
    # password). |
    # | 359 | 3D Secure authentication failed (card company reason). |
    # | 500 | A pre-processing error occurred during the request execution. |
    # | 501 | An internal error occurred. Please contact support. |
    # | 502 | The request timed out waiting for a response. |
    # | 601 | A system-released error occurred in this service. Check details. |
    # | 602 | The payment processor rejected the submitted request. Check
    # details. |
    # | 603 | The submitted customer identity verification was rejected by
    # customs. |
    # | 604 | The required customer ID information was not submitted by the
    # merchant. |
    # @return [Integer]
    attr_accessor :code

    # A brief message detailing why the payment failed.
    # @return [String]
    attr_accessor :message

    # Further specific details regarding the payment failure, if available.
    # @return [String]
    attr_accessor :detail

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['code'] = 'code'
      @_hash['message'] = 'message'
      @_hash['detail'] = 'detail'
      @_hash
    end

    # An array for optional fields
    def self.optionals
      %w[
        code
        message
        detail
      ]
    end

    # An array for nullable fields
    def self.nullables
      []
    end

    def initialize(code: SKIP, message: SKIP, detail: SKIP,
                   additional_properties: nil)
      # Add additional model properties to the instance
      additional_properties = {} if additional_properties.nil?

      @code = code unless code == SKIP
      @message = message unless message == SKIP
      @detail = detail unless detail == SKIP
      @additional_properties = additional_properties
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      code = hash.key?('code') ? hash['code'] : SKIP
      message = hash.key?('message') ? hash['message'] : SKIP
      detail = hash.key?('detail') ? hash['detail'] : SKIP

      # Create a new hash for additional properties, removing known properties.
      new_hash = hash.reject { |k, _| names.value?(k) }

      additional_properties = APIHelper.get_additional_properties(
        new_hash, proc { |value| value }
      )

      # Create object from extracted values.
      PaymentError.new(code: code,
                       message: message,
                       detail: detail,
                       additional_properties: additional_properties)
    end

    # Validates an instance of the object from a given value.
    # @param [PaymentError | Hash] The value against the validation is performed.
    def self.validate(value)
      return true if value.instance_of? self

      return false unless value.instance_of? Hash

      true
    end

    # Provides a human-readable string representation of the object.
    def to_s
      class_name = self.class.name.split('::').last
      "<#{class_name} code: #{@code}, message: #{@message}, detail: #{@detail},"\
      " additional_properties: #{@additional_properties}>"
    end

    # Provides a debugging-friendly string with detailed object information.
    def inspect
      class_name = self.class.name.split('::').last
      "<#{class_name} code: #{@code.inspect}, message: #{@message.inspect}, detail:"\
      " #{@detail.inspect}, additional_properties: #{@additional_properties}>"
    end
  end
end
