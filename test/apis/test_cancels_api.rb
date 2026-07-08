# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'api_test_base'

class CancelsApiTest < ApiTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.cancels
    @response_catcher = @controller.http_call_back
  end

  # Returns a paginated list of cancels for the specified charge.
  def test_list_cancels
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'

    # Perform the API call through the SDK function
    result = @controller.list_cancels(store_id, charge_id, limit: limit,
                                      cursor: cursor,
                                      cursor_direction: cursor_direction)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"items":[{"id":"a1b2c3d4-e5f6-7890-abcd-ef1234567890","charge_id":"6ef'\
      'b4e5c-690a-40f3-a4f1-0e19c5f84e98","store_id":"76cf4a64-02bc-4cb3-9a28-'\
      '74622e5928a1","status":"successful","error":{},"metadata":{"order_id":"'\
      'ORD-987"},"mode":"live","created_on":"2026-04-09T07:35:50.000000Z","upd'\
      'ated_on":"2026-04-09T07:36:00.000000Z"},{"id":"b2c3d4e5-f6a7-8901-bcde-'\
      'f23456789012","charge_id":"7fac5f6d-7a1b-51e4-b5f2-1f2ad6f95fa9","store'\
      '_id":"76cf4a64-02bc-4cb3-9a28-74622e5928a1","status":"successful","erro'\
      'r":{},"metadata":{"order_id":"ORD-988"},"mode":"live","created_on":"202'\
      '6-04-10T10:00:00.000000Z","updated_on":"2026-04-10T10:00:12.000000Z"},{'\
      '"id":"c3d4e5f6-a7b8-9012-cdef-345678901234","charge_id":"80bd6a7e-8b2c-'\
      '62f5-c6a3-2a3be7a06aba","store_id":"76cf4a64-02bc-4cb3-9a28-74622e5928a'\
      '1","status":"pending","error":{},"metadata":{},"mode":"live","created_o'\
      'n":"2026-04-11T14:22:08.000000Z","updated_on":"2026-04-11T14:22:08.0000'\
      '00Z"}],"has_more":false}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Creates a new cancellation request for a charge. The charge must be in a cancellable state. Bank transfer and konbini charges that have already been paid cannot be cancelled
  def test_create_cancel
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'
    body = CancelCreateRequest.from_hash(APIHelper.json_deserialize(
      '{"metadata":{"order_id":"ORD-987"}}', false))

    # Perform the API call through the SDK function
    result = @controller.create_cancel(store_id, charge_id,
                                       idempotency_key: idempotency_key,
                                       body: body)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"a1b2c3d4-e5f6-7890-abcd-ef1234567890","charge_id":"6efb4e5c-690a'\
      '-40f3-a4f1-0e19c5f84e98","store_id":"76cf4a64-02bc-4cb3-9a28-74622e5928'\
      'a1","status":"pending","error":null,"metadata":{},"mode":"live","create'\
      'd_on":"2026-04-09T07:35:50.000000Z","updated_on":"2026-04-09T07:35:50.0'\
      '00000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves a specific cancel by ID. Supports long-polling by appending `?polling=true` to wait for a status change (up to the server timeout). Requires a secret-bearing token.
  def test_get_cancel
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'
    polling = false

    # Perform the API call through the SDK function
    result = @controller.get_cancel(store_id, charge_id, id, polling: polling)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"a1b2c3d4-e5f6-7890-abcd-ef1234567890","charge_id":"6efb4e5c-690a'\
      '-40f3-a4f1-0e19c5f84e98","store_id":"76cf4a64-02bc-4cb3-9a28-74622e5928'\
      'a1","status":"successful","error":null,"metadata":{},"mode":"live","cre'\
      'ated_on":"2026-04-09T07:35:50.000000Z","updated_on":"2026-04-09T07:36:0'\
      '0.000000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Updates metadata on an existing cancel. Requires a secret-bearing token.
  def test_update_cancel
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'
    body = CancelUpdateRequest.from_hash(APIHelper.json_deserialize(
      '{"metadata":{"order_id":"12345"}}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.update_cancel(store_id, charge_id, id, body,
                                       idempotency_key: idempotency_key)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"a1b2c3d4-e5f6-7890-abcd-ef1234567890","charge_id":"6efb4e5c-690a'\
      '-40f3-a4f1-0e19c5f84e98","store_id":"76cf4a64-02bc-4cb3-9a28-74622e5928'\
      'a1","status":"successful","error":null,"metadata":{"order_id":"12345"},'\
      '"mode":"live","created_on":"2026-04-09T07:35:50.000000Z","updated_on":"'\
      '2026-04-09T08:00:00.000000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end