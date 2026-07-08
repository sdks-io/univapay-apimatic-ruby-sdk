# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require_relative 'controller_test_base'

class ChargesControllerTest < ControllerTestBase
  # Called only once for the class before any test has executed
  def setup
    setup_class
    @controller = @client.charges
    @response_catcher = @controller.http_call_back
  end

  # Creates a charge on a payment instrument (e.g. transaction token).
  def test_create_charge
    # Parameters for the API call
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'
    body = ChargeCreateRequest.from_hash(APIHelper.json_deserialize(
      '{"transaction_token_id":"11ef32a7-3a71-8662-803f-1bc27702eeec","amount"'\
      ':1000,"currency":"JPY","metadata":{"order_id":"12345"},"redirect":{"end'\
      'point":"https://test.url/"}}', false))

    # Perform the API call through the SDK function
    result = @controller.create_charge(idempotency_key: idempotency_key,
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
      '{"id":"11ef32c2-4010-a312-aaff-4b63e4d5f92d","store_id":"11edf541-c42d-'\
      '653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef32a7-3a71-8662-803f'\
      '-1bc27702eeec","transaction_token_type":"recurring","subscription_id":n'\
      'ull,"merchant_transaction_id":null,"requested_amount":1000,"requested_c'\
      'urrency":"JPY","requested_amount_formatted":1000,"charged_amount":null,'\
      '"charged_currency":null,"charged_amount_formatted":null,"fee_amount":nu'\
      'll,"fee_currency":null,"fee_amount_formatted":null,"only_direct_currenc'\
      'y":false,"capture_at":null,"descriptor":null,"descriptor_phone_number":'\
      'null,"status":"pending","error":null,"metadata":{"order_id":"12345"},"m'\
      'ode":"test","created_on":"2024-06-25T07:12:15.16452Z","redirect":{"endp'\
      'oint":"https://test.url/","redirect_id":"11ef32c2-40cf-f772-8325-1798ab'\
      'b1110d"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Lists all charges across all stores for the authenticated user.
  def test_list_all_charges
    # Parameters for the API call
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'
    last_four = '4242'
    name = 'TARO YAMADA'
    exp_month = 12
    exp_year = 2026
    from = '2026-04-01T00:00:00Z'
    to = '2026-04-30T23:59:59.999Z'
    email = 'user@example.com'
    phone = '+8108012341234'
    amount_from = 1000
    amount_to = 5000
    currency = 'JPY'
    mode = 'live'
    metadata = 'order_id: 12345'
    transaction_token_id = 'f33b673e-564c-4645-ae17-ca03846a86b7'

    # Perform the API call through the SDK function
    result = @controller.list_all_charges(
      limit: limit, cursor: cursor, cursor_direction: cursor_direction,
      last_four: last_four, name: name, exp_month: exp_month,
      exp_year: exp_year, from: from, to: to, email: email, phone: phone,
      amount_from: amount_from, amount_to: amount_to, currency: currency,
      mode: mode, metadata: metadata,
      transaction_token_id: transaction_token_id
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
      '{"items":[{"id":"11ef3500-1a2b-4c3d-8e4f-a1b2c3d4e5f0","store_id":"11ed'\
      'f541-c42d-653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef3501-2b3c'\
      '-4d5e-9f60-b2c3d4e5f011","transaction_token_type":"one_time","subscript'\
      'ion_id":null,"merchant_transaction_id":null,"requested_amount":1000,"re'\
      'quested_currency":"JPY","requested_amount_formatted":1000,"charged_amou'\
      'nt":1000,"charged_currency":"JPY","charged_amount_formatted":1000,"fee_'\
      'amount":null,"fee_currency":null,"fee_amount_formatted":null,"only_dire'\
      'ct_currency":false,"capture_at":null,"descriptor":null,"descriptor_phon'\
      'e_number":null,"status":"successful","error":{},"metadata":{"order_id":'\
      '"ORD-2001"},"mode":"live","created_on":"2026-04-09T07:35:50.000000Z","r'\
      'edirect":{},"merchant_name":"管理画面ガイド","store_name":"管理画面ガイド_TEST店舗"},{"'\
      'id":"11ef3502-3c4d-5e6f-a071-c3d4e5f01122","store_id":"22af6520-d53e-76'\
      '4d-9d4e-ef01b66fa6d1","transaction_token_id":"11ef3503-4d5e-6f70-b182-d'\
      '4e5f0112233","transaction_token_type":"recurring","subscription_id":nul'\
      'l,"merchant_transaction_id":null,"requested_amount":1250,"requested_cur'\
      'rency":"USD","requested_amount_formatted":12.5,"charged_amount":1250,"c'\
      'harged_currency":"USD","charged_amount_formatted":12.5,"fee_amount":nul'\
      'l,"fee_currency":null,"fee_amount_formatted":null,"only_direct_currency'\
      '":false,"capture_at":null,"descriptor":null,"descriptor_phone_number":n'\
      'ull,"status":"successful","error":{},"metadata":{"order_id":"ORD-2002"}'\
      ',"mode":"live","created_on":"2026-04-10T10:20:11.000000Z","redirect":{}'\
      ',"merchant_name":"管理画面ガイド","store_name":"管理画面ガイド_Online店舗"},{"id":"11ef'\
      '3504-5e6f-7081-c293-e5f001223344","store_id":"33af7631-e64f-875e-ae5f-f'\
      '012c77fb7e2","transaction_token_id":"11ef3505-6f70-8192-d3a4-f001122334'\
      '55","transaction_token_type":"one_time","subscription_id":null,"merchan'\
      't_transaction_id":null,"requested_amount":5000,"requested_currency":"JP'\
      'Y","requested_amount_formatted":5000,"charged_amount":5000,"charged_cur'\
      'rency":"JPY","charged_amount_formatted":5000,"fee_amount":null,"fee_cur'\
      'rency":null,"fee_amount_formatted":null,"only_direct_currency":false,"c'\
      'apture_at":null,"descriptor":null,"descriptor_phone_number":null,"statu'\
      's":"successful","error":{},"metadata":{"order_id":"ORD-2003"},"mode":"l'\
      'ive","created_on":"2026-04-11T14:22:08.000000Z","redirect":{},"merchant'\
      '_name":"管理画面ガイド","store_name":"管理画面ガイド_Osaka店舗"}],"has_more":false,"tot'\
      'al_hits":3}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Lists all charges for a specific store.
  def test_list_store_charges
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    limit = 10
    cursor = '3541d4fa-596d-428e-8a36-f274e1b3d505'
    cursor_direction = 'desc'
    last_four = '4242'
    name = 'TARO YAMADA'
    exp_month = 12
    exp_year = 2026
    from = '2026-04-01T00:00:00Z'
    to = '2026-04-30T23:59:59.999Z'
    email = 'user@example.com'
    phone = '+8108012341234'
    amount_from = 1000
    amount_to = 5000
    currency = 'JPY'
    mode = 'live'
    metadata = 'order_id: 12345'
    transaction_token_id = 'f33b673e-564c-4645-ae17-ca03846a86b7'

    # Perform the API call through the SDK function
    result = @controller.list_store_charges(
      store_id, limit: limit, cursor: cursor,
      cursor_direction: cursor_direction, last_four: last_four, name: name,
      exp_month: exp_month, exp_year: exp_year, from: from, to: to,
      email: email, phone: phone, amount_from: amount_from,
      amount_to: amount_to, currency: currency, mode: mode, metadata: metadata,
      transaction_token_id: transaction_token_id
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
      '{"items":[{"id":"11ef32c4-9ea8-169c-a6c8-bfc29867a226","store_id":"11ed'\
      'f541-c42d-653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef32c4-9e89'\
      '-0cac-bd63-17b9a26af61b","transaction_token_type":"one_time","subscript'\
      'ion_id":null,"merchant_transaction_id":null,"requested_amount":1000,"re'\
      'quested_currency":"JPY","requested_amount_formatted":1000,"charged_amou'\
      'nt":1000,"charged_currency":"JPY","charged_amount_formatted":1000,"fee_'\
      'amount":null,"fee_currency":null,"fee_amount_formatted":null,"only_dire'\
      'ct_currency":false,"capture_at":null,"descriptor":null,"descriptor_phon'\
      'e_number":null,"status":"successful","error":{},"metadata":{"univapay-n'\
      'ame":"taro yamada","univapay-phone-number":"8029854583"},"mode":"test",'\
      '"created_on":"2024-06-25T07:29:12.854865Z","redirect":{},"merchant_name'\
      '":"管理画面ガイド","store_name":"管理画面ガイド_TEST店舗"},{"id":"11ef32c3-3cfe-3bc0-ab'\
      'ed-0bb96f792078","store_id":"11edf541-c42d-653c-8c3d-dfe0a55f95c0","tra'\
      'nsaction_token_id":"11ef32c3-3cdd-df92-9dce-c346b9fdf088","transaction_'\
      'token_type":"one_time","subscription_id":null,"merchant_transaction_id"'\
      ':null,"requested_amount":1000,"requested_currency":"JPY","requested_amo'\
      'unt_formatted":1000,"charged_amount":1000,"charged_currency":"JPY","cha'\
      'rged_amount_formatted":1000,"fee_amount":null,"fee_currency":null,"fee_'\
      'amount_formatted":null,"only_direct_currency":false,"capture_at":null,"'\
      'descriptor":null,"descriptor_phone_number":null,"status":"successful","'\
      'error":{},"metadata":{"order_id":"12345"},"mode":"test","created_on":"2'\
      '024-06-25T07:19:19.507637Z","redirect":{},"merchant_name":"管理画面ガイド","st'\
      'ore_name":"管理画面ガイド_TEST店舗"}],"has_more":false,"total_hits":2}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves the details of an existing charge.
  def test_get_charge
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'
    polling = true

    # Perform the API call through the SDK function
    result = @controller.get_charge(store_id, id, polling: polling)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11ef32c2-4010-a312-aaff-4b63e4d5f92d","store_id":"11edf541-c42d-'\
      '653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef32a7-3a71-8662-803f'\
      '-1bc27702eeec","transaction_token_type":"recurring","subscription_id":n'\
      'ull,"merchant_transaction_id":null,"requested_amount":1000,"requested_c'\
      'urrency":"JPY","requested_amount_formatted":1000,"charged_amount":1000,'\
      '"charged_currency":"JPY","charged_amount_formatted":1000,"fee_amount":n'\
      'ull,"fee_currency":null,"fee_amount_formatted":null,"only_direct_curren'\
      'cy":false,"capture_at":null,"descriptor":null,"descriptor_phone_number"'\
      ':null,"status":"successful","error":null,"metadata":{"order_id":"12345"'\
      '},"mode":"test","created_on":"2024-06-25T07:12:15.16452Z","redirect":{"'\
      'endpoint":"https://test.url/","redirect_id":"11ef32c2-40cf-f772-8325-17'\
      '98abb1110d"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Use this request to add or modify arbitrary metadata on an existing charge.
  def test_update_charge
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'
    body = ChargeUpdateRequest.from_hash(APIHelper.json_deserialize(
      '{"metadata":{"order_id":"1234"}}', false))

    # Perform the API call through the SDK function
    result = @controller.update_charge(store_id, id,
                                       idempotency_key: idempotency_key,
                                       body: body)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11ef32c2-4010-a312-aaff-4b63e4d5f92d","store_id":"11edf541-c42d-'\
      '653c-8c3d-dfe0a55f95c0","transaction_token_id":"11ef32a7-3a71-8662-803f'\
      '-1bc27702eeec","transaction_token_type":"recurring","subscription_id":n'\
      'ull,"merchant_transaction_id":null,"requested_amount":1000,"requested_c'\
      'urrency":"JPY","requested_amount_formatted":1000,"charged_amount":1000,'\
      '"charged_currency":"JPY","charged_amount_formatted":1000,"fee_amount":n'\
      'ull,"fee_currency":null,"fee_amount_formatted":null,"only_direct_curren'\
      'cy":false,"capture_at":null,"descriptor":null,"descriptor_phone_number"'\
      ':null,"status":"successful","error":null,"metadata":{"order_id":"1234"}'\
      ',"mode":"test","created_on":"2024-06-25T07:12:15.16452Z","redirect":{"e'\
      'ndpoint":"https://test.url/","redirect_id":"11ef32c2-40cf-f772-8325-179'\
      '8abb1110d"}}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Captures a previously authorized charge (where `capture` was set to false during creation).  The capture amount must be less than or equal to the authorized amount, and the currency must match.
  def test_capture_charge
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'
    body = ChargeCaptureRequest.from_hash(APIHelper.json_deserialize(
      '{"amount":1000,"currency":"JPY"}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.capture_charge(store_id, id, body,
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
      '{}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves the necessary payment execution URL (for online payments) or bank account details (for bank transfers).
  #**⚠️ Prerequisite:** The charge `status` must be `awaiting` before requesting the issuer token.  If requested while the charge is in any other status, an error will be returned.
  def test_get_charge_issuer_token
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

    # Perform the API call through the SDK function
    result = @controller.get_charge_issuer_token(store_id, id)

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
      'load":{"request_data":"example_value"},"payment_type":"online"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves the 3-D Secure issuer token details required to authenticate a card charge.
  #**⚠️ Prerequisites:** 1. The charge must be created with `three_ds.mode` set to `normal` or `force`. 2. You must poll the charge until its `status` becomes `awaiting` before making this request.
  #**Execution Flow:** Once retrieved, the client (browser) must execute an `http_post` request to the `issuer_token` URL.  The `payload` object must be formatted according to the `content_type` (e.g., URL-encoded) and sent in the body. You can execute this via a redirect or inside an iframe. If using an iframe, continue polling the charge status  in the background until it reaches `successful`, `failed`, or `error`.
  def test_get_charge_three_ds_issuer_token
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

    # Perform the API call through the SDK function
    result = @controller.get_charge_three_ds_issuer_token(store_id, id)

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

  # Retrieves bank transfer ledger entries associated with a charge.
  def test_list_bank_transfer_ledgers
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    id = 'c4e87129-cad4-47fb-8ded-b4c0a4ae0dd4'

    # Perform the API call through the SDK function
    result = @controller.list_bank_transfer_ledgers(store_id, id)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"items":[{"bank_ledger_type":"payment","amount":1000,"balance":0,"virt'\
      'ual_bank_account_holder_name":"test holder name","virtual_bank_account_'\
      'number":"1234567","virtual_account_id":"test account id","transaction_d'\
      'ate":"2024-06-25","transaction_timestamp":"2024-06-25T07:29:16.367347Z"'\
      ',"mode":"test","created_on":"2024-06-25T07:29:16.373181Z"},{"bank_ledge'\
      'r_type":"deposit","amount":1000,"balance":1000,"virtual_bank_account_ho'\
      'lder_name":"test holder name","virtual_bank_account_number":"1234567","'\
      'virtual_account_id":"test account id","transaction_date":"2024-06-25","'\
      'transaction_timestamp":"2024-06-25T07:29:16.36731Z","mode":"test","crea'\
      'ted_on":"2024-06-25T07:29:16.368093Z"}],"has_more":false,"total_hits":2'\
      '}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Creates a customs declaration for a successful charge. Backend only accepts this request for WeChat Online and WeChat MPM charges. If a declaration already exists and is no longer pending, the backend updates its identity fields and restarts processing instead of creating a new record.
  def test_create_customs_declaration
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'
    body = CustomsDeclarationCreateRequest.from_hash(APIHelper.json_deserialize(
      '{"customs":"TOKYO","merchant_customs_no":"1234567890","certificate_id":'\
      '"AB1234567","certificate_name":"TARO YAMADA"}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.create_customs_declaration(
      store_id, charge_id, body, idempotency_key: idempotency_key
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
      '{"id":"11ef0000-0000-4000-8000-000000000040","charge_id":"11ef0000-0000'\
      '-4000-8000-000000000001","merchant_id":"11ef0000-0000-4000-8000-0000000'\
      '00020","store_id":"11ef0000-0000-4000-8000-000000000022","mode":"test",'\
      '"gateway":"wechat_online","declaration":{"customs":"TOKYO","merchant_cu'\
      'stoms_no":"1234567890","certificate_id":"AB1234567","certificate_name":'\
      '"TARO YAMADA"},"declaration_result":{},"status":"pending","error":null,'\
      '"created_on":"2026-04-09T07:35:50.000000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Creates a customs declaration for a successful charge. Backend only accepts this request for WeChat Online and WeChat MPM charges. If a declaration already exists and is no longer pending, the backend updates its identity fields and restarts processing instead of creating a new record.
  def test_create_customs_declaration1
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'
    body = CustomsDeclarationCreateRequest.from_hash(APIHelper.json_deserialize(
      '{"customs":"TOKYO","merchant_customs_no":"1234567890","certificate_id":'\
      '"AB1234567","certificate_name":"TARO YAMADA"}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.create_customs_declaration(
      store_id, charge_id, body, idempotency_key: idempotency_key
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
      '{"id":"11ef0000-0000-4000-8000-000000000040","charge_id":"11ef0000-0000'\
      '-4000-8000-000000000001","merchant_id":"11ef0000-0000-4000-8000-0000000'\
      '00020","store_id":"11ef0000-0000-4000-8000-000000000022","mode":"test",'\
      '"gateway":"wechat_online","declaration":{"customs":"TOKYO","merchant_cu'\
      'stoms_no":"1234567890","certificate_id":"AB1234567","certificate_name":'\
      '"TARO YAMADA"},"declaration_result":{},"status":"pending","error":null,'\
      '"created_on":"2026-04-09T07:35:50.000000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Retrieves a customs declaration for a charge. Supports long polling when `polling=true`, returning once the declaration leaves its current state or the polling timeout is reached.
  def test_get_customs_declaration
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'
    id = '11ef0000-0000-4000-8000-000000000040'
    polling = false

    # Perform the API call through the SDK function
    result = @controller.get_customs_declaration(store_id, charge_id, id,
                                                 polling: polling)

    # Test response code
    assert_equal(200, @response_catcher.response.status_code)
    # Test headers
    expected_headers = {}
    expected_headers['content-type'] = 'application/json; charset=utf-8'

    assert(ComparisonHelper.match_headers(expected_headers, @response_catcher.response.headers))

    # Test whether the captured response is as we expected
    refute_nil(result)
    expected_body = JSON.parse(
      '{"id":"11ef0000-0000-4000-8000-000000000040","charge_id":"11ef0000-0000'\
      '-4000-8000-000000000001","merchant_id":"11ef0000-0000-4000-8000-0000000'\
      '00020","store_id":"11ef0000-0000-4000-8000-000000000022","mode":"test",'\
      '"gateway":"wechat_online","declaration":{"customs":"TOKYO","merchant_cu'\
      'stoms_no":"1234567890","certificate_id":"AB1234567","certificate_name":'\
      '"TARO YAMADA"},"declaration_result":{"approving_authority":"TOKYO","tra'\
      'de_id":"wx_trade_12345","transaction_id":"wx_txn_12345","charge_transac'\
      'tion_id":"wx_charge_12345"},"status":"successful","error":null,"created'\
      '_on":"2026-04-09T07:35:50.000000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

  # Updates a customs declaration and requeues processing. Backend patching preserves the original `customs`, `certificate_id`, and `certificate_name` values and only accepts a new `merchant_customs_no`. Pending declarations cannot be patched.
  def test_patch_customs_declaration
    # Parameters for the API call
    store_id = '0cab399b-5621-425b-993b-f8507eba1e78'
    charge_id = '6efb4e5c-690a-40f3-a4f1-0e19c5f84e98'
    id = '11ef0000-0000-4000-8000-000000000040'
    body = CustomsDeclarationPatchRequest.from_hash(APIHelper.json_deserialize(
      '{"merchant_customs_no":"1234567891"}', false))
    idempotency_key = 'f64be872-353d-4c3c-84cb-3dc617fe89f7'

    # Perform the API call through the SDK function
    result = @controller.patch_customs_declaration(
      store_id, charge_id, id, body, idempotency_key: idempotency_key
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
      '{"id":"11ef0000-0000-4000-8000-000000000040","charge_id":"11ef0000-0000'\
      '-4000-8000-000000000001","merchant_id":"11ef0000-0000-4000-8000-0000000'\
      '00020","store_id":"11ef0000-0000-4000-8000-000000000022","mode":"test",'\
      '"gateway":"wechat_online","declaration":{"customs":"TOKYO","merchant_cu'\
      'stoms_no":"1234567891","certificate_id":"AB1234567","certificate_name":'\
      '"TARO YAMADA"},"declaration_result":{},"status":"pending","error":null,'\
      '"created_on":"2026-04-09T07:35:50.000000Z"}'
    )
    received_body = JSON.parse(@response_catcher.response.raw_body)
    assert(ComparisonHelper.match_body(expected_body, received_body))
  end

end