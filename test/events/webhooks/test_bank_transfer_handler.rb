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
class TestBankTransferHandler < Minitest::Test
  parallelize_me!
  include UnivapayClientSdk
  include CoreLibrary

def setup
  @handler = BankTransferHandler.new
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


  def test_bank_transfer_status_updated_from_bank_transfer_handler
    # Tests the `bankTransferStatusUpdated` event from bank-transferHandler.
    # arrange
    event_payload = {
      :id => "11ef0000-0000-4000-8000-000000000001",
      :event => "bank_transfer_status_updated",
      :data => {
        :id => "11ef0000-0000-4000-8000-000000000002",
        :charge_id => "11ef0000-0000-4000-8000-000000000001",
        :payment_status => "exact",
        :latest_deposit_date => "2026-04-09T07:35:50.000000Z",
        :created_on => "2026-04-09T07:35:50.000000Z",
        :latest_deposit_amount => 1000,
        :balance => 0,
        :currency => "JPY",
        :amount => 1000,
        :amount_difference => 0,
        :token_metadata => {
          :order_id => "12345"
        },
        :charge_metadata => {
          :order_id => "order_12345"
        },
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
    assert event.is_a?(BankTransferStatusWebhookCallback) && event.event == 'bank_transfer_status_updated'
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