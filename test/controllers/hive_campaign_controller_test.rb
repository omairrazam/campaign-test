require 'test_helper'

class HiveCampaignControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hive_campaign_index_url
    assert_response :success
  end

end
