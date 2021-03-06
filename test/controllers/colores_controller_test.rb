require 'test_helper'

class ColoresControllerTest < ActionController::TestCase
  setup do
    @color = colores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:colores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create color" do
    assert_difference('Color.count') do
      post :create, color: { codigo: @color.codigo, nombre: @color.nombre }
    end

    assert_redirected_to color_path(assigns(:color))
  end

  test "should show color" do
    get :show, id: @color
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @color
    assert_response :success
  end

  test "should update color" do
    patch :update, id: @color, color: { codigo: @color.codigo, nombre: @color.nombre }
    assert_redirected_to color_path(assigns(:color))
  end

  test "should destroy color" do
    assert_difference('Color.count', -1) do
      delete :destroy, id: @color
    end

    assert_redirected_to colores_path
  end
end
