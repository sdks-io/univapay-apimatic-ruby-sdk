# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'api_test_base'

class StoresApiTest < ApiTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.stores
    @response_catcher = @controller.http_call_back
  end

  # Returns stores visible to the current merchant credential. Supports cursor pagination plus `short_id` and free-text `search` filters.
  def test_list_stores
    # Parameters for the API call
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'
    short_id = 'st_01hxy9p8zw4d'
    search = 'tokyo'

    # Perform the API call through the SDK function
    result = @controller.list_stores(limit: limit, cursor: cursor,
                                     cursor_direction: cursor_direction,
                                     short_id: short_id, search: search)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"items":[{"id":"11ef0000-0000-4000-8000-000000000022","name":"Tokyo St'\
      'ore","merchant_name":"Example Merchant","created_on":"2026-04-09T07:35:'\
      '50.000000Z"},{"id":"11ef0000-0000-4000-8000-000000000023","name":"Osaka'\
      ' Store","merchant_name":"Example Merchant","created_on":"2026-04-10T09:'\
      '12:30.000000Z"},{"id":"11ef0000-0000-4000-8000-000000000024","name":"On'\
      'line Store","merchant_name":"Example Merchant","created_on":"2026-04-12'\
      'T14:45:05.000000Z"}],"has_more":false,"total_hits":3}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Returns a single store plus its resolved configuration snapshot for the current merchant context.
  def test_get_store
    # Parameters for the API call
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

    # Perform the API call through the SDK function
    result = @controller.get_store(id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11ef0000-0000-4000-8000-000000000022","name":"Tokyo Store","crea'\
      'ted_on":"2026-04-09T07:35:50.000000Z","configuration":{"percent_fee":3.'\
      '6,"country":"JP","language":"ja","minimum_charge_amounts":[{"amount":10'\
      '0,"currency":"JPY"}],"maximum_charge_amounts":[{"amount":100000,"curren'\
      'cy":"JPY"}],"user_transactions_configuration":{"enabled":true,"notify_c'\
      'ustomer":true,"notify_on_webhook_failure":true},"card_configuration":{"'\
      'enabled":true,"debit_enabled":true,"prepaid_enabled":false,"three_ds_re'\
      'quired":true},"online_configuration":{"enabled":true},"bank_transfer_co'\
      'nfiguration":{"enabled":true,"match_amount":true,"expiration":"P7D"}}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end