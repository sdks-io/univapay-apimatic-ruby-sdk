# univapay_client_sdk
#
# This file was automatically generated for Univapay
# by APIMATIC v3.0 ( https://www.apimatic.io ).

class HttpResponseCatcher < UnivapayClientSdk::HttpCallBack
  attr_reader :response

  def on_before_request(request)
  end

  # Catching the response
  def on_after_response(response)
    @response = response
  end
end



