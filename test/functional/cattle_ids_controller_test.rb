require 'test_helper'

class CattleIdsControllerTest < ActionController::TestCase
  setup do
    @cattle_id = cattle_ids(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cattle_ids)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cattle_id" do
    assert_difference('CattleId.count') do
      post :create, :cattle_id => @cattle_id.attributes
    end

    assert_redirected_to cattle_id_path(assigns(:cattle_id))
  end

  test "should show cattle_id" do
    get :show, :id => @cattle_id.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cattle_id.to_param
    assert_response :success
  end

  test "should update cattle_id" do
    put :update, :id => @cattle_id.to_param, :cattle_id => @cattle_id.attributes
    assert_redirected_to cattle_id_path(assigns(:cattle_id))
  end

  test "should destroy cattle_id" do
    assert_difference('CattleId.count', -1) do
      delete :destroy, :id => @cattle_id.to_param
    end

    assert_redirected_to cattle_ids_path
  end
end
