require 'test_helper'

class FreeTradersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get free_traders_index_url
    assert_response :success
  end

  test "should get show" do
    get free_traders_show_url
    assert_response :success
  end

  test "should get edit" do
    get free_traders_edit_url
    assert_response :success
  end

  test "should get update" do
    get free_traders_update_url
    assert_response :success
  end

  test "should get new" do
    get free_traders_new_url
    assert_response :success
  end

  test "should get create" do
    get free_traders_create_url
    assert_response :success
  end

end
