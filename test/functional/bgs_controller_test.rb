require 'test_helper'

class BgsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bgs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bg" do
    assert_difference('Bg.count') do
      post :create, :bg => { }
    end

    assert_redirected_to bg_path(assigns(:bg))
  end

  test "should show bg" do
    get :show, :id => bgs(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => bgs(:one).id
    assert_response :success
  end

  test "should update bg" do
    put :update, :id => bgs(:one).id, :bg => { }
    assert_redirected_to bg_path(assigns(:bg))
  end

  test "should destroy bg" do
    assert_difference('Bg.count', -1) do
      delete :destroy, :id => bgs(:one).id
    end

    assert_redirected_to bgs_path
  end
end
