require "test_helper"

class ElementoQuimControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get elemento_quim_show_url
    assert_response :success
  end

  test "should get create" do
    get elemento_quim_create_url
    assert_response :success
  end

  test "should get index" do
    get elemento_quim_index_url
    assert_response :success
  end

  test "should get delete" do
    get elemento_quim_delete_url
    assert_response :success
  end
end
