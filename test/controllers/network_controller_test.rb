require 'test_helper'

class NetworkControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get network_create_url
    assert_response :success
  end

end
