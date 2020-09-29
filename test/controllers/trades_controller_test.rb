require 'test_helper'

class TradesControllerTest < ActionDispatch::IntegrationTest
  test "should get add_trade" do
    get trades_add_trade_url
    assert_response :success
  end

  test "should get get_trade" do
    get trades_get_trade_url
    assert_response :success
  end

  test "should get remove_trade" do
    get trades_remove_trade_url
    assert_response :success
  end

  test "should get update_trade" do
    get trades_update_trade_url
    assert_response :success
  end

end
