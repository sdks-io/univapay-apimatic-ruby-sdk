# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'api_test_base'

class WebhooksApiTest < ApiTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.webhooks
    @response_catcher = @controller.http_call_back
  end

  # Returns a paginated list of webhooks for the specified store. Requires a secret-bearing token.
  def test_list_webhooks
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'
    active = true

    # Perform the API call through the SDK function
    result = @controller.list_webhooks(store_id, limit: limit, cursor: cursor,
                                       cursor_direction: cursor_direction,
                                       active: active)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"items":[{"id":"d3e4f5a6-b7c8-9012-def0-123456789abc","store_id":"76cf'\
      '4a64-02bc-4cb3-9a28-74622e5928a1","merchant_id":"01234567-89ab-cdef-012'\
      '3-456789abcdef","triggers":["charge_finished","refund_finished"],"url":'\
      '"https://example.com/webhooks/payments","auth_token":"my-secret-token",'\
      '"active":true,"is_integration":false,"created_on":"2026-04-01T00:00:00.'\
      '000000Z","updated_on":"2026-04-02T00:00:00.000000Z"},{"id":"e4f5a6b7-c8'\
      'd9-0123-ef01-23456789abcd","store_id":"76cf4a64-02bc-4cb3-9a28-74622e59'\
      '28a1","merchant_id":"01234567-89ab-cdef-0123-456789abcdef","triggers":['\
      '"subscription_payment","subscription_failure"],"url":"https://example.c'\
      'om/webhooks/subscriptions","auth_token":null,"active":true,"is_integrat'\
      'ion":false,"created_on":"2026-04-03T08:30:00.000000Z","updated_on":"202'\
      '6-04-03T08:30:00.000000Z"},{"id":"f5a6b7c8-d9e0-1234-f012-3456789abcde"'\
      ',"store_id":"76cf4a64-02bc-4cb3-9a28-74622e5928a1","merchant_id":"01234'\
      '567-89ab-cdef-0123-456789abcdef","triggers":["cancel_finished"],"url":"'\
      'https://example.com/webhooks/cancels","auth_token":"legacy-token","acti'\
      've":false,"is_integration":false,"created_on":"2026-03-20T12:00:00.0000'\
      '00Z","updated_on":"2026-04-05T09:15:00.000000Z"}],"has_more":false}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Creates a new webhook subscription for the specified store. Requires a secret-bearing token. Duplicate URLs within the same scope are not allowed. There is a maximum limit on the number of webhooks per store.
  def test_create_webhook
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    body = WebhookCreateRequest.from_hash(APIHelper.json_deserialize(
      '{"triggers":["charge_finished"],"url":"https://example.com/webhooks/pay'\
      'ments","auth_token":"my-secret-token"}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.create_webhook(store_id, body,
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
      '{"id":"d3e4f5a6-b7c8-9012-def0-123456789abc","store_id":"76cf4a64-02bc-'\
      '4cb3-9a28-74622e5928a1","merchant_id":"01234567-89ab-cdef-0123-456789ab'\
      'cdef","triggers":["charge_finished","refund_finished"],"url":"https://e'\
      'xample.com/webhooks/payments","auth_token":"my-secret-token","active":t'\
      'rue,"is_integration":false,"created_on":"2026-04-01T00:00:00.000000Z","'\
      'updated_on":"2026-04-01T00:00:00.000000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves a specific webhook by ID.
  def test_get_webhook
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

    # Perform the API call through the SDK function
    result = @controller.get_webhook(store_id, id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"d3e4f5a6-b7c8-9012-def0-123456789abc","store_id":"76cf4a64-02bc-'\
      '4cb3-9a28-74622e5928a1","merchant_id":"01234567-89ab-cdef-0123-456789ab'\
      'cdef","triggers":["charge_finished"],"url":"https://example.com/webhook'\
      's/payments","active":true}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Updates an existing webhook. All fields are optional; omitted fields are left unchanged. Duplicate URLs within the same scope are not allowed.
  def test_update_webhook
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'
    body = WebhookUpdateRequest.from_hash(APIHelper.json_deserialize(
      '{"active":false}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.update_webhook(store_id, id, body,
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
      '{"id":"d3e4f5a6-b7c8-9012-def0-123456789abc","store_id":"76cf4a64-02bc-'\
      '4cb3-9a28-74622e5928a1","merchant_id":"01234567-89ab-cdef-0123-456789ab'\
      'cdef","triggers":["charge_finished"],"url":"https://example.com/webhook'\
      's/v2","active":false}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Deactivates and deletes a webhook subscription.
  def test_delete_webhook
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

    # Perform the API call through the SDK function
    @controller.delete_webhook(store_id, id)

    # Test response code
    assert_equal(204, @response_catcher.response.status_code)
  end

  # Returns a paginated list of webhook delivery events for the specified webhook. Each event captures the result of a single webhook delivery attempt.
  def test_list_webhook_events
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'

    # Perform the API call through the SDK function
    result = @controller.list_webhook_events(store_id, id, limit: limit,
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
      '{"items":[{"id":"e1f2a3b4-c5d6-7890-efab-123456789cde","webhook_id":"d3'\
      'e4f5a6-b7c8-9012-def0-123456789abc","event":"charge_finished","successf'\
      'ul":true,"fired_on":"2026-04-09T07:36:00.000000Z","error_message":null,'\
      '"created_on":"2026-04-09T07:35:50.000000Z"},{"id":"f2a3b4c5-d6e7-8901-f'\
      'abc-23456789cdef","webhook_id":"d3e4f5a6-b7c8-9012-def0-123456789abc","'\
      'event":"refund_finished","successful":true,"fired_on":"2026-04-10T11:00'\
      ':05.000000Z","error_message":null,"created_on":"2026-04-10T11:00:00.000'\
      '000Z"},{"id":"a3b4c5d6-e7f8-9012-abcd-3456789cdef0","webhook_id":"d3e4f'\
      '5a6-b7c8-9012-def0-123456789abc","event":"cancel_finished","successful"'\
      ':false,"fired_on":"2026-04-11T15:30:10.000000Z","error_message":"Connec'\
      'tion timed out after 10s","created_on":"2026-04-11T15:30:00.000000Z"}],'\
      '"has_more":false}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Re-sends the webhook payload for a previously delivered (or failed) event. Returns 202 Accepted immediately; delivery is asynchronous.
  def test_redeliver_webhook_event
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'
    event_id = 'e1f2a3b4-c5d6-7890-efab-123456789cde'
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.redeliver_webhook_event(
      store_id, id, event_id, idempotency_key: idempotency_key
    )

    # Test response code
    assert_equal(202, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end