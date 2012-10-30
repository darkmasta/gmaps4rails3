require 'test_helper'

class SucsControllerTest < ActionController::TestCase
  setup do
    @suc = sucs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sucs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suc" do
    assert_difference('Suc.count') do
      post :create, suc: { address: @suc.address, gmaps: @suc.gmaps, latitude: @suc.latitude, longitude: @suc.longitude, name: @suc.name, suc: @suc.suc, suclu: @suc.suclu, suctipi: @suc.suctipi, tarih: @suc.tarih }
    end

    assert_redirected_to suc_path(assigns(:suc))
  end

  test "should show suc" do
    get :show, id: @suc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suc
    assert_response :success
  end

  test "should update suc" do
    put :update, id: @suc, suc: { address: @suc.address, gmaps: @suc.gmaps, latitude: @suc.latitude, longitude: @suc.longitude, name: @suc.name, suc: @suc.suc, suclu: @suc.suclu, suctipi: @suc.suctipi, tarih: @suc.tarih }
    assert_redirected_to suc_path(assigns(:suc))
  end

  test "should destroy suc" do
    assert_difference('Suc.count', -1) do
      delete :destroy, id: @suc
    end

    assert_redirected_to sucs_path
  end
end
