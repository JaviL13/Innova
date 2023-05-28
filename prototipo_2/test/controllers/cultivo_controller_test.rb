require "test_helper"

class CultivoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get cultivo_show_url
    assert_response :success
  end

  test "should get create" do
    get cultivo_create_url
    assert_response :success
  end

  test "should get index" do
    get cultivo_index_url
    assert_response :success
  end

  test "should get delete" do
    get cultivo_delete_url
    assert_response :success
  end
end
