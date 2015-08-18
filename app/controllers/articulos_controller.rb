class ArticulosController < ApplicationController
  before_action :set_articulo, only: [:show, :edit, :update, :destroy]

  def index
    @articulos = Articulo.includes(:producto, :color, :talla)
  end

  def show
  end

  def new
    @articulo = Articulo.new
  end

  def edit
  end

  def create
    producto = Producto.find params[:producto_id]
    @articulo = Articulo.new articulo_params.merge! producto_id: producto.id

    respond_to do |format|
      if @articulo.save
        format.html { redirect_to producto, notice: 'Articulo se ha creado correctamente.' }
        format.json { render :show, status: :created, location: @articulo }
      else
        format.html { render :new }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @articulo.update(articulo_params)
        format.html { redirect_to @articulo, notice: 'Articulo was successfully updated.' }
        format.json { render :show, status: :ok, location: @articulo }
      else
        format.html { render :edit }
        format.json { render json: @articulo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @articulo.destroy
    respond_to do |format|
      format.html { redirect_to articulos_url, notice: 'Articulo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_articulo
      @articulo = Articulo.find(params[:id])
    end

    def articulo_params
      params.require(:articulo).permit(:ean, :producto_id, :color_id, :talla_id, :precio_costo, :precio_venta, :stock)
    end
end
