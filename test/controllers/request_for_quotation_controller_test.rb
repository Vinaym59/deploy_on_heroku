require 'test_helper'

class RequestForQuotationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get request_for_quotation_index_url
    assert_response :success
  end

end
