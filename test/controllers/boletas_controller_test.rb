require 'test_helper'

class BoletasControllerTest < ActionController::TestCase
  setup do
    @boleta = boletas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:boletas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create boleta" do
    assert_difference('Boleta.count') do
      post :create, boleta: { venta_id: @boleta.venta_id }
    end

    assert_redirected_to boleta_path(assigns(:boleta))
  end

  test "should show boleta" do
    get :show, id: @boleta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @boleta
    assert_response :success
  end

  test "should update boleta" do
    patch :update, id: @boleta, boleta: { venta_id: @boleta.venta_id }
    assert_redirected_to boleta_path(assigns(:boleta))
  end

  test "should destroy boleta" do
    assert_difference('Boleta.count', -1) do
      delete :destroy, id: @boleta
    end

    assert_redirected_to boletas_path
  end
end
