require 'test_helper'

class Store::CavesControllerTest < ActionController::TestCase
  setup do
    @store_cafe = store_caves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_caves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_cafe" do
    assert_difference('Store::Cafe.count') do
      post :create, store_cafe: {  }
    end

    assert_redirected_to store_cafe_path(assigns(:store_cafe))
  end

  test "should show store_cafe" do
    get :show, id: @store_cafe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_cafe
    assert_response :success
  end

  test "should update store_cafe" do
    patch :update, id: @store_cafe, store_cafe: {  }
    assert_redirected_to store_cafe_path(assigns(:store_cafe))
  end

  test "should destroy store_cafe" do
    assert_difference('Store::Cafe.count', -1) do
      delete :destroy, id: @store_cafe
    end

    assert_redirected_to store_caves_path
  end
end
