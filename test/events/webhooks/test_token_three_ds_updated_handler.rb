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
class TestTokenThreeDsUpdatedHandler < Minitest::Test
  parallelize_me!
  include UnivapayClientSdk
  include CoreLibrary

def setup
  @handler = TokenThreeDsUpdatedHandler.new
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


  def test_token_three_ds_updated_from_token_three_ds_updated_handler
    # Tests the `tokenThreeDsUpdated` event from tokenThreeDsUpdatedHandler.
    # arrange
    event_payload = {
      :id => "11ef0000-0000-4000-8000-000000000001",
      :event => "token_three_d_s_updated",
      :data => {
        :id => "6426bbd2-17bd-41bf-883b-1fe970db48ee",
        :store_id => "fc264608-9a9e-495e-844e-a08129a81af4",
        :email => "test@univapay.com",
        :payment_type => "card",
        :active => true,
        :mode => "live",
        :type => "recurring",
        :confirmed => true,
        :metadata => {
          :customer_id => "cust_12345"
        },
        :created_on => "2026-04-09T07:35:50.000000Z",
        :updated_on => "2026-04-09T07:35:50.000000Z",
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
    assert event.is_a?(TokenThreeDsUpdatedWebhookCallback) && event.event == 'token_three_d_s_updated'
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