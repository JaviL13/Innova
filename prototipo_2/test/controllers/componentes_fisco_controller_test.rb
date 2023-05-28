require "test_helper"

class ComponentesFiscoControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get componentes_fisco_show_url
    assert_response :success
  end

  test "should get create" do
    get componentes_fisco_create_url
    assert_response :success
  end

  test "should get index" do
    get componentes_fisco_index_url
    assert_response :success
  end

  test "should get delete" do
    get componentes_fisco_delete_url
    assert_response :success
  end
end
