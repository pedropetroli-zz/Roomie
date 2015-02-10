require 'test_helper'

class HouseSearchesControllerTest < ActionController::TestCase
  setup do
    @house_search = house_searches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:house_searches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create house_search" do
    assert_difference('HouseSearch.count') do
      post :create, house_search: { arrival: @house_search.arrival, departure: @house_search.departure, fee: @house_search.fee, house_id: @house_search.house_id, insurance: @house_search.insurance, rental: @house_search.rental, total_amounth: @house_search.total_amounth }
    end

    assert_redirected_to house_search_path(assigns(:house_search))
  end

  test "should show house_search" do
    get :show, id: @house_search
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @house_search
    assert_response :success
  end

  test "should update house_search" do
    patch :update, id: @house_search, house_search: { arrival: @house_search.arrival, departure: @house_search.departure, fee: @house_search.fee, house_id: @house_search.house_id, insurance: @house_search.insurance, rental: @house_search.rental, total_amounth: @house_search.total_amounth }
    assert_redirected_to house_search_path(assigns(:house_search))
  end

  test "should destroy house_search" do
    assert_difference('HouseSearch.count', -1) do
      delete :destroy, id: @house_search
    end

    assert_redirected_to house_searches_path
  end
end
