require 'test_helper'

class OutageTypesControllerTest < ActionController::TestCase
  setup do
    @outage_type = outage_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outage_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create outage_type" do
    assert_difference('OutageType.count') do
      post :create, outage_type: @outage_type.attributes
    end

    assert_redirected_to outage_type_path(assigns(:outage_type))
  end

  test "should show outage_type" do
    get :show, id: @outage_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @outage_type
    assert_response :success
  end

  test "should update outage_type" do
    put :update, id: @outage_type, outage_type: @outage_type.attributes
    assert_redirected_to outage_type_path(assigns(:outage_type))
  end

  test "should destroy outage_type" do
    assert_difference('OutageType.count', -1) do
      delete :destroy, id: @outage_type
    end

    assert_redirected_to outage_types_path
  end
end
