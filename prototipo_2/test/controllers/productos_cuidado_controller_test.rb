require "test_helper"

class ProductosCuidadoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get productos_cuidado_show_url
    assert_response :success
  end

  test "should get create" do
    get productos_cuidado_create_url
    assert_response :success
  end

  test "should get index" do
    get productos_cuidado_index_url
    assert_response :success
  end

  test "should get delete" do
    get productos_cuidado_delete_url
    assert_response :success
  end
end
