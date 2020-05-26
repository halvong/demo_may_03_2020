require 'test_helper'

class GrandControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get grand_index_url
    assert_response :success
  end

end
