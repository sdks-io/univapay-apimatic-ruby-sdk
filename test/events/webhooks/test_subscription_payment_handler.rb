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
class TestSubscriptionPaymentHandler < Minitest::Test
  parallelize_me!
  include UnivapayClientSdk
  include CoreLibrary

def setup
  @handler = SubscriptionPaymentHandler.new
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


  def test_subscription_payment_from_subscription_payment_handler
    # Tests the `subscriptionPayment` event from subscriptionPaymentHandler.
    # arrange
    event_payload = {
      :id => "11ef0000-0000-4000-8000-000000000001",
      :event => "subscription_payment",
      :data => {
        :id => "11ef335e-9aa5-c54a-8313-7f9847da313a",
        :store_id => "11edf541-c42d-653c-8c3d-dfe0a55f95c0",
        :transaction_token_id => "11ef32a7-3a71-8662-803f-1bc27702eeec",
        :amount => 1250,
        :currency => "USD",
        :amount_formatted => 12.5,
        :schedule_settings => {
          :start_on => "2024-07-01",
          :zone_id => "Asia/Tokyo",
          :preserve_end_of_month => false,
          :retry_interval => "P7D",
          :termination_mode => "on_next_payment"
        },
        :only_direct_currency => false,
        :first_charge_authorization_only => false,
        :status => "current",
        :metadata => {
          :order_id => "12345"
        },
        :mode => "test",
        :created_on => "2024-06-26T01:51:28.627023Z",
        :period => "monthly",
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
    assert event.is_a?(SubscriptionPaymentWebhookCallback) && event.event == 'subscription_payment'
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