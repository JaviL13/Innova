require "test_helper"

class CaractQuimicaControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get caract_quimica_show_url
    assert_response :success
  end

  test "should get create" do
    get caract_quimica_create_url
    assert_response :success
  end

  test "should get index" do
    get caract_quimica_index_url
    assert_response :success
  end

  test "should get delete" do
    get caract_quimica_delete_url
    assert_response :success
  end
end
