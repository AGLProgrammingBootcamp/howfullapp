require 'test_helper'

class StoreDbsControllerTest < ActionController::TestCase
  setup do
    @store_db = store_dbs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_dbs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_db" do
    assert_difference('StoreDb.count') do
      post :create, store_db: { location: @store_db.location, seats: @store_db.seats, smorkingornot: @store_db.smorkingornot, store: @store_db.store }
    end

    assert_redirected_to store_db_path(assigns(:store_db))
  end

  test "should show store_db" do
    get :show, id: @store_db
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_db
    assert_response :success
  end

  test "should update store_db" do
    patch :update, id: @store_db, store_db: { location: @store_db.location, seats: @store_db.seats, smorkingornot: @store_db.smorkingornot, store: @store_db.store }
    assert_redirected_to store_db_path(assigns(:store_db))
  end

  test "should destroy store_db" do
    assert_difference('StoreDb.count', -1) do
      delete :destroy, id: @store_db
    end

    assert_redirected_to store_dbs_path
  end
end
