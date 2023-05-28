require "test_helper"

class HongoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get hongo_show_url
    assert_response :success
  end

  test "should get create" do
    get hongo_create_url
    assert_response :success
  end

  test "should get index" do
    get hongo_index_url
    assert_response :success
  end

  test "should get delete" do
    get hongo_delete_url
    assert_response :success
  end
end
