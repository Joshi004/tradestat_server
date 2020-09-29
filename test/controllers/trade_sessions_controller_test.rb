require 'test_helper'

class TradeSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get create_trade_session" do
    get trade_sessions_create_trade_session_url
    assert_response :success
  end

  test "should get edit_trade_session" do
    get trade_sessions_edit_trade_session_url
    assert_response :success
  end

  test "should get remove_trade_session" do
    get trade_sessions_remove_trade_session_url
    assert_response :success
  end

  test "should get get_trade_session" do
    get trade_sessions_get_trade_session_url
    assert_response :success
  end

end
