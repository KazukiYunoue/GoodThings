require 'test_helper'

class GoodThingsControllerTest < ActionController::TestCase
  setup do
    @good_thing = good_things(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:good_things)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create good_thing" do
    assert_difference('GoodThing.count') do
      post :create, :good_thing => @good_thing.attributes
    end

    assert_redirected_to good_thing_path(assigns(:good_thing))
  end

  test "should show good_thing" do
    get :show, :id => @good_thing.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @good_thing.to_param
    assert_response :success
  end

  test "should update good_thing" do
    put :update, :id => @good_thing.to_param, :good_thing => @good_thing.attributes
    assert_redirected_to good_thing_path(assigns(:good_thing))
  end

  test "should destroy good_thing" do
    assert_difference('GoodThing.count', -1) do
      delete :destroy, :id => @good_thing.to_param
    end

    assert_redirected_to good_things_path
  end
end
