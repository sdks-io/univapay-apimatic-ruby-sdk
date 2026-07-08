# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'api_test_base'

class TransactionTokensApiTest < ApiTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.transaction_tokens
    @response_catcher = @controller.http_call_back
  end

  # Exchange raw payment data for a secure token. **PCI DSS Compliance Required** if sending raw card numbers.
  def test_create_transaction_token
    # Parameters for the API call
    body = TransactionTokenCreateRequest.from_hash(APIHelper.json_deserialize(
      '{"payment_type":"card","type":"recurring","email":"test@univapay.com","'\
      'metadata":{"univapay-phone-number":"+81 08012341234"},"data":{"cardhold'\
      'er":"TEST TEST","card_number":"4242424242424242","exp_month":"09","exp_'\
      'year":"26","cvv":"123","phone_number":{"country_code":"81","local_numbe'\
      'r":"08012341234"},"three_ds":{"redirect_endpoint":"https://univapay.com'\
      '/redirect/index.html"},"cvv_authorize":{"enabled":false,"currency":"JPY'\
      '"}}}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.create_transaction_token(
      body, idempotency_key: idempotency_key
    )

    # Test response code
    assert_equal(201, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11f11e85-e9e9-b198-b990-c3a715943241","store_id":"11f0e274-1e3b-'\
      '4752-9513-33d3e07ede13","email":"test@test.com","payment_type":"card","'\
      'active":true,"mode":"live","type":"recurring","usage_limit":null,"confi'\
      'rmed":null,"metadata":{"univapay-link-id":"11f11e85-1b45-dace-bf3d-cbca'\
      'e52f65fc","univapay-name":"test","univapay-phone-number":"+81 080123412'\
      '34"},"created_on":"2026-03-13T02:39:52.908468Z","updated_on":"2026-03-1'\
      '3T02:39:52.908468Z","last_used_on":null,"data":{"card":{"cardholder":"T'\
      'EST TEST","exp_month":9,"exp_year":2026,"card_bin":"424242","last_four"'\
      ':"424242","brand":"visa","card_type":"credit","country":"JP","category"'\
      ':"standard","issuer":"issuer","sub_brand":"none"},"billing":{"line1":nu'\
      'll,"line2":null,"state":null,"city":null,"country":null,"zip":null,"pho'\
      'ne_number":{"country_code":81,"local_number":"08012341234"}},"cvv_autho'\
      'rize":{"enabled":false,"status":null,"charge_id":null,"credentials_id":'\
      'null,"currency":null},"cvv_authorize_check":{"status":null,"charge_id":'\
      'null,"date":null},"three_ds":{"enabled":true,"status":"pending","redire'\
      'ct_endpoint":"https://univapay.com/redirect/index.html","error":null,"e'\
      'xempted":false}}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Lists all transaction tokens across all stores.
  def test_list_all_transaction_tokens
    # Parameters for the API call
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'

    # Perform the API call through the SDK function
    result = @controller.list_all_transaction_tokens(
      limit: limit, cursor: cursor, cursor_direction: cursor_direction
    )

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"items":[{"id":"2fe23e45-f95d-4c95-9963-739070096443","store_id":"79e9'\
      '504e-96d8-46ed-8d22-2e8b36238605","merchant_name":"Test Merchant","stor'\
      'e_name":"Tokyo Store","email":"taro@example.com","payment_type":"card",'\
      '"active":true,"mode":"live","type":"recurring","created_on":"2026-04-09'\
      'T07:35:50Z","updated_on":"2026-04-09T07:35:50Z","user_data":{"cardholde'\
      'r_name":"TARO YAMADA","email":"taro@example.com"}},{"id":"3af34f56-a06e'\
      '-4d06-aa74-84a181107554","store_id":"8bfa615f-a7e9-47fe-9e33-3f9c473497'\
      '16","merchant_name":"Test Merchant","store_name":"Osaka Store","email":'\
      '"hanako@example.com","payment_type":"card","active":true,"mode":"live",'\
      '"type":"one_time","created_on":"2026-04-10T10:20:11Z","updated_on":"202'\
      '6-04-10T10:20:11Z","user_data":{"cardholder_name":"HANAKO SUZUKI","emai'\
      'l":"hanako@example.com"}},{"id":"4bf45e67-b17f-4e17-bb85-95b292218665",'\
      '"store_id":"79e9504e-96d8-46ed-8d22-2e8b36238605","merchant_name":"Test'\
      ' Merchant","store_name":"Tokyo Store","email":"jiro@example.com","payme'\
      'nt_type":"card","active":false,"mode":"live","type":"subscription","cre'\
      'ated_on":"2026-04-11T18:05:42Z","updated_on":"2026-04-12T08:31:09Z","us'\
      'er_data":{"cardholder_name":"JIRO TANAKA","email":"jiro@example.com"}}]'\
      ',"has_more":false,"total_hits":3}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Lists all transaction tokens for a specific store.
  def test_list_store_transaction_tokens
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'

    # Perform the API call through the SDK function
    result = @controller.list_store_transaction_tokens(
      store_id, limit: limit, cursor: cursor,
      cursor_direction: cursor_direction
    )

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"items":[{"id":"2fe23e45-f95d-4c95-9963-739070096443","store_id":"79e9'\
      '504e-96d8-46ed-8d22-2e8b36238605","merchant_name":"Test Merchant","stor'\
      'e_name":"Tokyo Store","email":"taro@example.com","payment_type":"card",'\
      '"active":true,"mode":"live","type":"recurring","created_on":"2026-04-09'\
      'T07:35:50Z","updated_on":"2026-04-09T07:35:50Z","user_data":{"cardholde'\
      'r_name":"TARO YAMADA","email":"taro@example.com"}},{"id":"5cf56e78-c28a'\
      '-4f28-cc96-06c303329776","store_id":"79e9504e-96d8-46ed-8d22-2e8b362386'\
      '05","merchant_name":"Test Merchant","store_name":"Tokyo Store","email":'\
      '"saburo@example.com","payment_type":"card","active":true,"mode":"live",'\
      '"type":"one_time","created_on":"2026-04-10T12:14:00Z","updated_on":"202'\
      '6-04-10T12:14:00Z","user_data":{"cardholder_name":"SABURO KATO","email"'\
      ':"saburo@example.com"}},{"id":"6df67e89-d39a-4039-dd07-17d414430887","s'\
      'tore_id":"79e9504e-96d8-46ed-8d22-2e8b36238605","merchant_name":"Test M'\
      'erchant","store_name":"Tokyo Store","email":"shiro@example.com","paymen'\
      't_type":"card","active":true,"mode":"live","type":"subscription","creat'\
      'ed_on":"2026-04-11T16:48:23Z","updated_on":"2026-04-11T16:48:23Z","user'\
      '_data":{"cardholder_name":"SHIRO ITO","email":"shiro@example.com"}}],"h'\
      'as_more":false,"total_hits":3}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves the details of an existing transaction token.
  def test_get_transaction_token
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

    # Perform the API call through the SDK function
    result = @controller.get_transaction_token(store_id, id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11f11e85-e9e9-b198-b990-c3a715943241","store_id":"11f0e274-1e3b-'\
      '4752-9513-33d3e07ede13","email":"test@test.com","payment_type":"card","'\
      'active":true,"mode":"live","type":"recurring","usage_limit":null,"confi'\
      'rmed":null,"metadata":{"univapay-link-id":"11f11e85-1b45-dace-bf3d-cbca'\
      'e52f65fc","univapay-name":"test","univapay-phone-number":"+81 080123412'\
      '34"},"created_on":"2026-03-13T02:39:52.908468Z","updated_on":"2026-03-1'\
      '3T02:39:52.908468Z","last_used_on":null,"data":{"card":{"cardholder":"T'\
      'EST TEST","exp_month":9,"exp_year":2026,"card_bin":"424242","last_four"'\
      ':"424242","brand":"visa","card_type":"credit","country":"JP","category"'\
      ':"standard","issuer":"issuer","sub_brand":"none"},"billing":{"line1":nu'\
      'll,"line2":null,"state":null,"city":null,"country":null,"zip":null,"pho'\
      'ne_number":{"country_code":81,"local_number":"08012341234"}},"cvv_autho'\
      'rize":{"enabled":false,"status":null,"charge_id":null,"credentials_id":'\
      'null,"currency":null},"cvv_authorize_check":{"status":null,"charge_id":'\
      'null,"date":null},"three_ds":{"enabled":true,"status":"pending","redire'\
      'ct_endpoint":"https://univapay.com/redirect/index.html","error":null,"e'\
      'xempted":false}}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # ⚠️ **LEGACY WARNING: Discouraged Operation**
  #While it is technically possible to update a transaction token, this practice is highly discouraged and is maintained solely for legacy reasons. 
  #**Updating raw card details requires your server environment to be fully PCI DSS compliant.**
  #**Recommended Approach:** Instead of updating an existing token, it is best practice to create an entirely new transaction token using Univapay's frontend integrations (**Link Form**, **Widget**, or **Inline Form**). This allows Univapay to securely handle the customer's payment data without it ever touching your servers.
  #--- **Legacy Usage:** Updates CVV, Address, Email, or Card Details.  *Note: If updating only the CVV to resolve a `RECURRING_USAGE_REQUIRES_CVV` error, the application token secret is not required.*
  def test_update_transaction_token
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'
    body = TransactionTokenUpdateRequest.from_hash(APIHelper.json_deserialize(
      '{"email":"test.update@test.com","data":{"cardholder":"TARO YAMADA","car'\
      'd_number":"4000020000000000","exp_month":12,"exp_year":2099,"cvv":"123"'\
      ',"line1":"11111","line2":"222","state":"Tokyo","city":"テスト区一丁目","countr'\
      'y":"JP","zip":"1234567","phone_number":{"country_code":"81","local_numb'\
      'er":"08000000000"}}}', false))

    # Perform the API call through the SDK function
    result = @controller.update_transaction_token(
      store_id, id, idempotency_key: idempotency_key, body: body
    )

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11f11e85-e9e9-b198-b990-c3a715943241","store_id":"11f0e274-1e3b-'\
      '4752-9513-33d3e07ede13","email":"test@test.com","payment_type":"card","'\
      'active":true,"mode":"live","type":"recurring","usage_limit":null,"confi'\
      'rmed":null,"metadata":{"univapay-link-id":"11f11e85-1b45-dace-bf3d-cbca'\
      'e52f65fc","univapay-name":"test","univapay-phone-number":"+81 080123412'\
      '34"},"created_on":"2026-03-13T02:39:52.908468Z","updated_on":"2026-03-1'\
      '3T02:39:52.908468Z","last_used_on":null,"data":{"card":{"cardholder":"T'\
      'EST TEST","exp_month":9,"exp_year":2026,"card_bin":"424242","last_four"'\
      ':"424242","brand":"visa","card_type":"credit","country":"JP","category"'\
      ':"standard","issuer":"issuer","sub_brand":"none"},"billing":{"line1":nu'\
      'll,"line2":null,"state":null,"city":null,"country":null,"zip":null,"pho'\
      'ne_number":{"country_code":81,"local_number":"08012341234"}},"cvv_autho'\
      'rize":{"enabled":false,"status":null,"charge_id":null,"credentials_id":'\
      'null,"currency":null},"cvv_authorize_check":{"status":null,"charge_id":'\
      'null,"date":null},"three_ds":{"enabled":true,"status":"pending","redire'\
      'ct_endpoint":"https://univapay.com/redirect/index.html","error":null,"e'\
      'xempted":false}}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Deletes a specific transaction token. 
  #⚠️ **WARNING: Breaks Linked Subscriptions**
  #Please note that deleting a transaction token will immediately prevent any linked recurring charges or subscriptions from being processed. Proceed with caution.
  def test_delete_transaction_token
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

    # Perform the API call through the SDK function
    @controller.delete_transaction_token(store_id, id)

    # Test response code
    assert_equal(204, @response_catcher.response.status_code)
  end

  # Retrieves the information required to execute 3-D Secure authentication when creating a recurring transaction token.
  #**⚠️ Important Notes:** 1. **PCI DSS Compliance:** This endpoint is only available to PCI DSS compliant merchants who are authorized to send raw card data directly via the API to create tokens. 2. **Target Tokens:** This only applies to tokens where `type` is `recurring`. For `one_time` or `subscription` tokens, 3-D Secure is requested during charge creation, not token creation. 3. **Execution Flow:**
  #   - After creating the token, poll the token object until `data.three_ds.status` becomes `awaiting`.
  #   - Once `awaiting`, use this endpoint to fetch the issuer token details.
  #   - Format the returned `payload` according to the `content_type` (e.g., URL-encoded) and execute an `http_post` request from the consumer's browser to the `issuer_token` URL.
  def test_get_token_three_ds_issuer_token
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

    # Perform the API call through the SDK function
    result = @controller.get_token_three_ds_issuer_token(store_id, id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"issuer_token":"http://test.com/action","call_method":"http_post","pay'\
      'load":{"request_data":"example_value"},"payment_type":"card","content_t'\
      'ype":"application/x-www-form-urlencoded; charset=UTF-8"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end