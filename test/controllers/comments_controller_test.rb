require 'test_helper'

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get add_comment" do
    get comments_add_comment_url
    assert_response :success
  end

  test "should get remove_comment" do
    get comments_remove_comment_url
    assert_response :success
  end

  test "should get edit_comment" do
    get comments_edit_comment_url
    assert_response :success
  end

  test "should get get_comment" do
    get comments_get_comment_url
    assert_response :success
  end

end
