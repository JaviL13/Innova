require "test_helper"

class CampoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get campo_show_url
    assert_response :success
  end

  test "should get create" do
    get campo_create_url
    assert_response :success
  end

  test "should get index" do
    get campo_index_url
    assert_response :success
  end

  test "should get delete" do
    get campo_delete_url
    assert_response :success
  end
end
