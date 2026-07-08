# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

require 'json'
require 'minitest/autorun'
require 'minitest/hell'
require 'minitest/pride'
require 'minitest/proveit'
require 'univapay_client_sdk'
require_relative '../http_response_catcher'

class ApiTestBase < Minitest::Test
  parallelize_me!
  include UnivapayClientSdk
  include CoreLibrary

  # Initializes the base test controller
  def setup_class
    @client = Client.from_env(http_callback: HttpResponseCatcher.new)
  end
end
