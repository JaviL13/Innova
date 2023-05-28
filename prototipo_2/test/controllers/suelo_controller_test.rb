require "test_helper"

class SueloControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get suelo_show_url
    assert_response :success
  end

  test "should get create" do
    get suelo_create_url
    assert_response :success
  end

  test "should get index" do
    get suelo_index_url
    assert_response :success
  end

  test "should get delete" do
    get suelo_delete_url
    assert_response :success
  end
end
