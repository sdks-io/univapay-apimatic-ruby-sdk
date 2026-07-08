# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

module UnivapayClientSdk
  # Event type that triggers a webhook notification.
  class WebhookTrigger
    WEBHOOK_TRIGGER = [
      # TODO: Write general description for TOKEN_CREATED
      TOKEN_CREATED = 'token_created'.freeze,

      # TODO: Write general description for TOKEN_UPDATED
      TOKEN_UPDATED = 'token_updated'.freeze,

      # TODO: Write general description for TOKEN_THREE_D_S_UPDATED
      TOKEN_THREE_D_S_UPDATED = 'token_three_d_s_updated'.freeze,

      # TODO: Write general description for TOKEN_CVV_AUTH_UPDATED
      TOKEN_CVV_AUTH_UPDATED = 'token_cvv_auth_updated'.freeze,

      # TODO: Write general description for TOKEN_CVV_AUTH_CHECK_UPDATED
      TOKEN_CVV_AUTH_CHECK_UPDATED = 'token_cvv_auth_check_updated'.freeze,

      # TODO: Write general description for TOKEN_REPLACED
      TOKEN_REPLACED = 'token_replaced'.freeze,

      # TODO: Write general description for CHARGE_UPDATED
      CHARGE_UPDATED = 'charge_updated'.freeze,

      # TODO: Write general description for CHARGE_FINISHED
      CHARGE_FINISHED = 'charge_finished'.freeze,

      # TODO: Write general description for REFUND_FINISHED
      REFUND_FINISHED = 'refund_finished'.freeze,

      # TODO: Write general description for CANCEL_FINISHED
      CANCEL_FINISHED = 'cancel_finished'.freeze,

      # TODO: Write general description for CUSTOMS_DECLARATION_FINISHED
      CUSTOMS_DECLARATION_FINISHED = 'customs_declaration_finished'.freeze,

      # TODO: Write general description for RECURRING_TOKEN_DELETED
      RECURRING_TOKEN_DELETED = 'recurring_token_deleted'.freeze,

      # TODO: Write general description for BANK_TRANSFER_STATUS_UPDATED
      BANK_TRANSFER_STATUS_UPDATED = 'bank_transfer_status_updated'.freeze,

      # TODO: Write general description for SUBSCRIPTION_CREATED
      SUBSCRIPTION_CREATED = 'subscription_created'.freeze,

      # TODO: Write general description for SUBSCRIPTION_PAYMENT
      SUBSCRIPTION_PAYMENT = 'subscription_payment'.freeze,

      # TODO: Write general description for SUBSCRIPTION_COMPLETED
      SUBSCRIPTION_COMPLETED = 'subscription_completed'.freeze,

      # TODO: Write general description for SUBSCRIPTION_FAILURE
      SUBSCRIPTION_FAILURE = 'subscription_failure'.freeze,

      # TODO: Write general description for SUBSCRIPTION_CANCELED
      SUBSCRIPTION_CANCELED = 'subscription_canceled'.freeze,

      # TODO: Write general description for SUBSCRIPTION_SUSPENDED
      SUBSCRIPTION_SUSPENDED = 'subscription_suspended'.freeze
    ].freeze

    def self.validate(value)
      return false if value.nil?

      WEBHOOK_TRIGGER.include?(value)
    end

    def self.from_value(value, default_value = TOKEN_CREATED)
      return default_value if value.nil?

      str = value.to_s.strip

      case str.downcase
      when 'token_created' then TOKEN_CREATED
      when 'token_updated' then TOKEN_UPDATED
      when 'token_three_d_s_updated' then TOKEN_THREE_D_S_UPDATED
      when 'token_cvv_auth_updated' then TOKEN_CVV_AUTH_UPDATED
      when 'token_cvv_auth_check_updated' then TOKEN_CVV_AUTH_CHECK_UPDATED
      when 'token_replaced' then TOKEN_REPLACED
      when 'charge_updated' then CHARGE_UPDATED
      when 'charge_finished' then CHARGE_FINISHED
      when 'refund_finished' then REFUND_FINISHED
      when 'cancel_finished' then CANCEL_FINISHED
      when 'customs_declaration_finished' then CUSTOMS_DECLARATION_FINISHED
      when 'recurring_token_deleted' then RECURRING_TOKEN_DELETED
      when 'bank_transfer_status_updated' then BANK_TRANSFER_STATUS_UPDATED
      when 'subscription_created' then SUBSCRIPTION_CREATED
      when 'subscription_payment' then SUBSCRIPTION_PAYMENT
      when 'subscription_completed' then SUBSCRIPTION_COMPLETED
      when 'subscription_failure' then SUBSCRIPTION_FAILURE
      when 'subscription_canceled' then SUBSCRIPTION_CANCELED
      when 'subscription_suspended' then SUBSCRIPTION_SUSPENDED
      else
        default_value
      end
    end
  end
end
