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
class TestChargeFinishedHandler < Minitest::Test
  parallelize_me!
  include UnivapayClientSdk
  include CoreLibrary

def setup
  @handler = ChargeFinishedHandler.new
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


  def test_charge_finished_from_charge_finished_handler
    # Tests the `chargeFinished` event from chargeFinishedHandler.
    # arrange
    event_payload = {
      :id => "11ef0000-0000-4000-8000-000000000001",
      :event => "charge_finished",
      :data => {
        :id => "6efb4e5c-690a-40f3-a4f1-0e19c5f84e98",
        :store_id => "11edf541-c42d-653c-8c3d-dfe0a55f95c0",
        :transaction_token_id => "11ef32a7-3a71-8662-803f-1bc27702eeec",
        :transaction_token_type => "recurring",
        :subscription_id => "11ef335e-9aa5-c54a-8313-7f9847da313a",
        :requested_amount => 1250,
        :requested_currency => "USD",
        :requested_amount_formatted => 12.5,
        :charged_amount => 1250,
        :charged_currency => "USD",
        :charged_amount_formatted => 12.5,
        :only_direct_currency => false,
        :status => "successful",
        :error => nil,
        :mode => "test",
        :created_on => "2024-06-26T01:51:30.000000Z",
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
    assert event.is_a?(ChargeFinishedWebhookCallback) && event.event == 'charge_finished'
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