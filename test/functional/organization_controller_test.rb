require 'test_helper'

class OrganizationControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get calculate_and_save" do
    get :calculate_and_save
    assert_response :success
  end

end
