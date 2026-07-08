# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'api_test_base'

class MerchantsApiTest < ApiTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.merchants
    @response_catcher = @controller.http_call_back
  end

  # Returns merchant identity and the effective configuration resolved from bearer credentials. Treat this as the canonical introspection endpoint for merchant integrations.
  def test_get_current_merchant

    # Perform the API call through the SDK function
    result = @controller.get_current_merchant()

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11ef0000-0000-4000-8000-000000000020","verification_data_id":"11'\
      'ef0000-0000-4000-8000-000000000021","name":"Example Merchant","email":"'\
      'owner@example.com","notification_email":"alerts@example.com","finance_n'\
      'otification_email":"finance@example.com","verified":true,"configuration'\
      '":{"percent_fee":3.6,"country":"JP","language":"ja","minimum_charge_amo'\
      'unts":[{"amount":100,"currency":"JPY"}],"maximum_charge_amounts":[{"amo'\
      'unt":100000,"currency":"JPY"}],"user_transactions_configuration":{"enab'\
      'led":true,"notify_customer":true,"notify_on_webhook_failure":true},"car'\
      'd_configuration":{"enabled":true,"debit_enabled":true,"prepaid_enabled"'\
      ':false,"three_ds_required":true},"online_configuration":{"enabled":true'\
      '},"bank_transfer_configuration":{"enabled":true,"match_amount":true,"ex'\
      'piration":"P7D"}},"created_on":"2026-04-09T07:35:50.000000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end