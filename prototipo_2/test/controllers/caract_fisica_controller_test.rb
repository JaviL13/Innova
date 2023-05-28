require "test_helper"

class CaractFisicaControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get caract_fisica_show_url
    assert_response :success
  end

  test "should get create" do
    get caract_fisica_create_url
    assert_response :success
  end

  test "should get index" do
    get caract_fisica_index_url
    assert_response :success
  end

  test "should get delete" do
    get caract_fisica_delete_url
    assert_response :success
  end
end
