require 'test_helper'

class ArticulosControllerTest < ActionController::TestCase
  setup do
    @articuel = articulos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:articulos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create articuel" do
    assert_difference('Articulo.count') do
      post :create, articuel: { color_id: @articuel.color_id, ean: @articuel.ean, precio_costo: @articuel.precio_costo, precio_venta: @articuel.precio_venta, producto_id: @articuel.producto_id, stock: @articuel.stock, talla_id: @articuel.talla_id }
    end

    assert_redirected_to articuel_path(assigns(:articuel))
  end

  test "should show articuel" do
    get :show, id: @articuel
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @articuel
    assert_response :success
  end

  test "should update articuel" do
    patch :update, id: @articuel, articuel: { color_id: @articuel.color_id, ean: @articuel.ean, precio_costo: @articuel.precio_costo, precio_venta: @articuel.precio_venta, producto_id: @articuel.producto_id, stock: @articuel.stock, talla_id: @articuel.talla_id }
    assert_redirected_to articuel_path(assigns(:articuel))
  end

  test "should destroy articuel" do
    assert_difference('Articulo.count', -1) do
      delete :destroy, id: @articuel
    end

    assert_redirected_to articulos_path
  end
end
