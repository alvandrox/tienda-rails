require 'test_helper'

class TallasControllerTest < ActionController::TestCase
  setup do
    @talla = tallas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tallas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create talla" do
    assert_difference('Talla.count') do
      post :create, talla: { nombre: @talla.nombre }
    end

    assert_redirected_to talla_path(assigns(:talla))
  end

  test "should show talla" do
    get :show, id: @talla
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @talla
    assert_response :success
  end

  test "should update talla" do
    patch :update, id: @talla, talla: { nombre: @talla.nombre }
    assert_redirected_to talla_path(assigns(:talla))
  end

  test "should destroy talla" do
    assert_difference('Talla.count', -1) do
      delete :destroy, id: @talla
    end

    assert_redirected_to tallas_path
  end
end
