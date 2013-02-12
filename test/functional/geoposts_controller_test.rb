require 'test_helper'

class GeopostsControllerTest < ActionController::TestCase
  setup do
    @geopost = geoposts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:geoposts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create geopost" do
    assert_difference('Geopost.count') do
      post :create, geopost: { content: @geopost.content, latitude: @geopost.latitude, longitude: @geopost.longitude, user_id: @geopost.user_id }
    end

    assert_redirected_to geopost_path(assigns(:geopost))
  end

  test "should show geopost" do
    get :show, id: @geopost
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @geopost
    assert_response :success
  end

  test "should update geopost" do
    put :update, id: @geopost, geopost: { content: @geopost.content, latitude: @geopost.latitude, longitude: @geopost.longitude, user_id: @geopost.user_id }
    assert_redirected_to geopost_path(assigns(:geopost))
  end

  test "should destroy geopost" do
    assert_difference('Geopost.count', -1) do
      delete :destroy, id: @geopost
    end

    assert_redirected_to geoposts_path
  end
end
