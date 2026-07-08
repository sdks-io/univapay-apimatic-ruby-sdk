# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'api_test_base'

class RefundsApiTest < ApiTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.refunds
    @response_catcher = @controller.http_call_back
  end

  # Retrieves a list of all refunds for a specific charge.
  def test_list_refunds
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'
    metadata = 'order_id: 12345'

    # Perform the API call through the SDK function
    result = @controller.list_refunds(store_id, charge_id, limit: limit,
                                      cursor: cursor,
                                      cursor_direction: cursor_direction,
                                      metadata: metadata)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"items":[{"id":"b4d9fea9-c9b3-4e76-a25d-b61f7e4821b6","store_id":"76cf'\
      '4a64-02bc-4cb3-9a28-74622e5928a1","charge_id":"6efb4e5c-690a-40f3-a4f1-'\
      '0e19c5f84e98","status":"successful","amount":1000,"currency":"JPY","amo'\
      'unt_formatted":1000,"reason":"customer_request","message":"Customer ret'\
      'urned item","error":{},"metadata":{},"mode":"live","created_on":"2026-0'\
      '4-09T07:35:50.000000Z","updated_on":"2026-04-09T07:36:00.000000Z"},{"id'\
      '":"c5e0afb0-dac4-5f87-b36e-c72f8f5932c7","store_id":"76cf4a64-02bc-4cb3'\
      '-9a28-74622e5928a1","charge_id":"7fac5f6d-7a1b-51e4-b5f2-1f2ad6f95fa9",'\
      '"status":"pending","amount":2500,"currency":"JPY","amount_formatted":25'\
      '00,"reason":"duplicate","message":"Duplicate charge","error":{},"metada'\
      'ta":{"order_id":"ORD-1002"},"mode":"live","created_on":"2026-04-10T10:0'\
      '0:00.000000Z","updated_on":"2026-04-10T10:00:05.000000Z"},{"id":"d6f1ba'\
      'c1-ebd5-6098-c47f-d83a906043d8","store_id":"76cf4a64-02bc-4cb3-9a28-746'\
      '22e5928a1","charge_id":"80bd6a7e-8b2c-62f5-c6a3-2a3be7a06aba","status":'\
      '"successful","amount":500,"currency":"JPY","amount_formatted":500,"reas'\
      'on":"fraud","message":"Fraudulent transaction reversed","error":{},"met'\
      'adata":{},"mode":"live","created_on":"2026-04-11T14:22:08.000000Z","upd'\
      'ated_on":"2026-04-11T14:22:20.000000Z"}],"has_more":false,"total_hits":'\
      '3}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Creates a refund for a successful charge. The charge must have status `successful`. Konbini and bank transfer charges cannot be refunded. The refund is processed asynchronously — the initial status will be `pending`.
  def test_create_refund
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'
    body = RefundCreateRequest.from_hash(APIHelper.json_deserialize(
      '{"amount":1000,"currency":"JPY","reason":"customer_request"}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.create_refund(store_id, charge_id, body,
                                       idempotency_key: idempotency_key)

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"b4d9fea9-c9b3-4e76-a25d-b61f7e4821b6","store_id":"76cf4a64-02bc-'\
      '4cb3-9a28-74622e5928a1","charge_id":"6efb4e5c-690a-40f3-a4f1-0e19c5f84e'\
      '98","status":"pending","amount":1000,"currency":"JPY","amount_formatted'\
      '":1000,"reason":"customer_request","message":"Customer returned item","'\
      'error":null,"metadata":{},"mode":"live","created_on":"2026-04-09T07:35:'\
      '50.000000Z","updated_on":"2026-04-09T07:35:50.000000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves the details of a specific refund. Supports long polling — set `polling=true` to wait until the refund status changes from `pending` to a terminal state (`successful`, `failed`, or `error`).
  def test_get_refund
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'
    polling = true

    # Perform the API call through the SDK function
    result = @controller.get_refund(store_id, charge_id, id, polling: polling)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"b4d9fea9-c9b3-4e76-a25d-b61f7e4821b6","store_id":"76cf4a64-02bc-'\
      '4cb3-9a28-74622e5928a1","charge_id":"6efb4e5c-690a-40f3-a4f1-0e19c5f84e'\
      '98","status":"successful","amount":1000,"currency":"JPY","amount_format'\
      'ted":1000,"reason":"customer_request","message":"Customer returned item'\
      '","error":null,"metadata":{},"mode":"live","created_on":"2026-04-09T07:'\
      '35:50.000000Z","updated_on":"2026-04-09T07:36:00.000000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Updates metadata, message, or reason on an existing refund.
  def test_update_refund
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'
    body = RefundUpdateRequest.from_hash(APIHelper.json_deserialize(
      '{"message":"Updated reason note","metadata":{"order_id":"12345"}}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.update_refund(store_id, charge_id, id, body,
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
      '{"id":"b4d9fea9-c9b3-4e76-a25d-b61f7e4821b6","store_id":"76cf4a64-02bc-'\
      '4cb3-9a28-74622e5928a1","charge_id":"6efb4e5c-690a-40f3-a4f1-0e19c5f84e'\
      '98","status":"successful","amount":1000,"currency":"JPY","amount_format'\
      'ted":1000,"reason":"customer_request","message":"Updated reason note","'\
      'error":null,"metadata":{"order_id":"12345"},"mode":"live","created_on":'\
      '"2026-04-09T07:35:50.000000Z","updated_on":"2026-04-09T08:00:00.000000Z'\
      '"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end