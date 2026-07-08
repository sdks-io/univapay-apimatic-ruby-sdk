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
class TestRefundHandler < Minitest::Test
  parallelize_me!
  include UnivapayClientSdk
  include CoreLibrary

def setup
  @handler = RefundHandler.new
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


  def test_refund_finished_from_refund_handler
    # Tests the `refundFinished` event from refundHandler.
    # arrange
    event_payload = {
      :id => "11ef0000-0000-4000-8000-000000000001",
      :event => "refund_finished",
      :data => {
        :id => "b4d9fea9-c9b3-4e76-a25d-b61f7e4821b6",
        :store_id => "76cf4a64-02bc-4cb3-9a28-74622e5928a1",
        :charge_id => "6efb4e5c-690a-40f3-a4f1-0e19c5f84e98",
        :status => "successful",
        :amount => 1000,
        :currency => "JPY",
        :amount_formatted => 1000,
        :reason => "customer_request",
        :message => "Customer returned item",
        :error => nil,
        :metadata => {
          :order_id => "order_12345"
        },
        :mode => "live",
        :created_on => "2026-04-09T07:35:50.000000Z",
        :updated_on => "2026-04-09T07:36:00.000000Z",
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
    assert event.is_a?(RefundWebhookCallback) && event.event == 'refund_finished'
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