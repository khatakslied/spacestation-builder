require 'test_helper'

class SpaceStationsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get space_stations_index_url
    assert_response :success
  end

  test "should get show" do
    get space_stations_show_url
    assert_response :success
  end

  test "should get new" do
    get space_stations_new_url
    assert_response :success
  end

  test "should get edit" do
    get space_stations_edit_url
    assert_response :success
  end

end
