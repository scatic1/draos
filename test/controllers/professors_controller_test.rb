require 'test_helper'

class ProfessorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get professors_index_url
    assert_response :success
  end

  test "should get show" do
    get professors_show_url
    assert_response :success
  end

  test "should get new" do
    get professors_new_url
    assert_response :success
  end

  test "should get edit" do
    get professors_edit_url
    assert_response :success
  end

end
