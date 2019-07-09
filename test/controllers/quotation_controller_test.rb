require 'test_helper'

class QuotationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get quotation_index_url
    assert_response :success
  end

end
