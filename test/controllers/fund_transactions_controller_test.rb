require 'test_helper'

class FundTransactionsControllerTest < ActionDispatch::IntegrationTest
  test "should get add_transaction" do
    get fund_transactions_add_transaction_url
    assert_response :success
  end

  test "should get remove_transaction" do
    get fund_transactions_remove_transaction_url
    assert_response :success
  end

  test "should get edit_transaction" do
    get fund_transactions_edit_transaction_url
    assert_response :success
  end

  test "should get get_transaction" do
    get fund_transactions_get_transaction_url
    assert_response :success
  end

end
