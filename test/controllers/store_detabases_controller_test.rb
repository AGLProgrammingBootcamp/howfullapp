require 'test_helper'

class StoreDetabasesControllerTest < ActionController::TestCase
  setup do
    @store_detabasis = store_detabases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_detabases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_detabasis" do
    assert_difference('StoreDetabase.count') do
      post :create, store_detabasis: { capacity: @store_detabasis.capacity, filled_seat: @store_detabasis.filled_seat, location: @store_detabasis.location, smorkingornot: @store_detabasis.smorkingornot, store: @store_detabasis.store }
    end

    assert_redirected_to store_detabasis_path(assigns(:store_detabasis))
  end

  test "should show store_detabasis" do
    get :show, id: @store_detabasis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_detabasis
    assert_response :success
  end

  test "should update store_detabasis" do
    patch :update, id: @store_detabasis, store_detabasis: { capacity: @store_detabasis.capacity, filled_seat: @store_detabasis.filled_seat, location: @store_detabasis.location, smorkingornot: @store_detabasis.smorkingornot, store: @store_detabasis.store }
    assert_redirected_to store_detabasis_path(assigns(:store_detabasis))
  end

  test "should destroy store_detabasis" do
    assert_difference('StoreDetabase.count', -1) do
      delete :destroy, id: @store_detabasis
    end

    assert_redirected_to store_detabases_path
  end
end
