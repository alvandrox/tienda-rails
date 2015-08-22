require 'test_helper'

class SinBoletasControllerTest < ActionController::TestCase
  setup do
    @sin_boleta = sin_boletas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sin_boletas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sin_boleta" do
    assert_difference('SinBoleta.count') do
      post :create, sin_boleta: { venta_id: @sin_boleta.venta_id }
    end

    assert_redirected_to sin_boleta_path(assigns(:sin_boleta))
  end

  test "should show sin_boleta" do
    get :show, id: @sin_boleta
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sin_boleta
    assert_response :success
  end

  test "should update sin_boleta" do
    patch :update, id: @sin_boleta, sin_boleta: { venta_id: @sin_boleta.venta_id }
    assert_redirected_to sin_boleta_path(assigns(:sin_boleta))
  end

  test "should destroy sin_boleta" do
    assert_difference('SinBoleta.count', -1) do
      delete :destroy, id: @sin_boleta
    end

    assert_redirected_to sin_boletas_path
  end
end
