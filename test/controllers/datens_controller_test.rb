require 'test_helper'

class DatensControllerTest < ActionController::TestCase
  setup do
    @daten = datens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create daten" do
    assert_difference('Daten.count') do
      post :create, daten: { datum: @daten.datum, standort: @daten.standort, was: @daten.was, wohin: @daten.wohin }
    end

    assert_redirected_to daten_path(assigns(:daten))
  end

  test "should show daten" do
    get :show, id: @daten
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @daten
    assert_response :success
  end

  test "should update daten" do
    patch :update, id: @daten, daten: { datum: @daten.datum, standort: @daten.standort, was: @daten.was, wohin: @daten.wohin }
    assert_redirected_to daten_path(assigns(:daten))
  end

  test "should destroy daten" do
    assert_difference('Daten.count', -1) do
      delete :destroy, id: @daten
    end

    assert_redirected_to datens_path
  end
end
