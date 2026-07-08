# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).


require 'json'
require 'rack'
require 'stringio'
require 'minitest/autorun'
require 'minitest/hell'
require 'minitest/pride'
require 'minitest/proveit'
require 'univapay_client_sdk'
class TestCustomsHandler < Minitest::Test
  parallelize_me!
  include UnivapayClientSdk
  include CoreLibrary

def setup
  @handler = CustomsHandler.new
end

  def json_bytes(obj)
    JSON.generate(obj).encode('utf-8')
  end

def make_request(body_obj, add_signature_header: true)
  raw = json_bytes(body_obj)
  env = {
    'REQUEST_METHOD' => 'POST',
    'PATH_INFO' => '/webhooks',
    'rack.input' => StringIO.new(raw),
    'CONTENT_TYPE' => 'application/json'
  }
  Rack::Request.new(env)
end


  def test_customs_declaration_finished_from_customs_handler
    # Tests the `customsDeclarationFinished` event from customsHandler.
    # arrange
    event_payload = {
      :id => "11ef0000-0000-4000-8000-000000000001",
      :event => "customs_declaration_finished",
      :data => {
        :id => "11ef0000-0000-4000-8000-000000000040",
        :charge_id => "11ef0000-0000-4000-8000-000000000001",
        :merchant_id => "11ef0000-0000-4000-8000-000000000020",
        :store_id => "11ef0000-0000-4000-8000-000000000022",
        :mode => "test",
        :gateway => "wechat_online",
        :declaration => {
          :customs => "TOKYO",
          :merchant_customs_no => "1234567890",
          :certificate_id => "AB1234567",
          :certificate_name => "TARO YAMADA"
        },
        :declaration_result => {
          :approving_authority => "TOKYO",
          :trade_id => "wx_trade_12345",
          :transaction_id => "wx_txn_12345",
          :charge_transaction_id => "wx_charge_12345"
        },
        :status => "successful",
        :created_on => "2026-04-09T07:35:50.000000Z",
        :platform_id => "00000550-0000-0000-0000-000000000000",
        :exampleAdditionalProperty => {
          :key1 => "val1",
          :key2 => "val2"
        }
      },
      :created_on => "2026-04-09T07:35:50.000000Z",
      :exampleAdditionalProperty => {
        :key1 => "val1",
        :key2 => "val2"
      }
    }
    rack_req = make_request(event_payload)

    # act
    event = @handler.parse_event(rack_req)

    # assert
    assert event.is_a?(CustomsDeclarationWebhookCallback) && event.event == 'customs_declaration_finished'
  end

    def test_unknown_event
    # arrange
    event_payload  = 45.0
    rake_req = make_request(event_payload)

    # act
    event = @handler.parse_event(rake_req)

    # assert
    assert event.is_a?(UnknownEvent)
  end

end