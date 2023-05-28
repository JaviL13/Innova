require "test_helper"

class CuidadoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get cuidado_show_url
    assert_response :success
  end

  test "should get create" do
    get cuidado_create_url
    assert_response :success
  end

  test "should get index" do
    get cuidado_index_url
    assert_response :success
  end

  test "should get delete" do
    get cuidado_delete_url
    assert_response :success
  end
end
