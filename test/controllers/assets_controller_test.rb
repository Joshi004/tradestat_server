require 'test_helper'

class AssetsControllerTest < ActionDispatch::IntegrationTest
  test "should get get_asset" do
    get assets_get_asset_url
    assert_response :success
  end

  test "should get remove_asset" do
    get assets_remove_asset_url
    assert_response :success
  end

  test "should get add_asset" do
    get assets_add_asset_url
    assert_response :success
  end

end
