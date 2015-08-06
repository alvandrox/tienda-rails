class MarcasController < ApplicationController

  def index
    @marcas = Marca.all
    @cantidad_productos = Producto.count
  end

  def show
    @marca = Marca.find(params[:id])
  end

  def edit
  end

  def create
    proveedor = Proveedor.find params[:proveedor_id]
    marca = Marca.new marca_params.merge! proveedor_id: proveedor.id

    if marca.save
      redirect_to proveedor, notice: 'Marca de a guardado Exitosamente'
    else
      redirect_to proveedor, alert: 'A ocurrido un error marca no se a guardado'
    end
  end

  def marca_params
    params.require(:marca).permit(:nombre)
  end
end
