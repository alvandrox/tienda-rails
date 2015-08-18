class ProveedoresController < ApplicationController
  before_action :set_proveedor, only: [:show, :edit, :update, :destroy]

  def index
    @proveedores = Proveedor.includes(:marcas)
  end

  def show
  end

  def new
    @proveedor = Proveedor.new
  end

  def edit
  end

  def create
    @proveedor = Proveedor.new(proveedor_params)

    respond_to do |format|
      if @proveedor.save
        format.html { redirect_to proveedores_url, notice: 'Proveedor was successfully created.' }
        format.json { render :show, status: :created, location: @proveedor }
      else
        format.html { render :new }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @proveedor.update(proveedor_params)
        format.html { redirect_to proveedores_url, notice: 'Proveedor was successfully updated.' }
        format.json { render :show, status: :ok, location: @proveedor }
      else
        format.html { render :edit }
        format.json { render json: @proveedor.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @proveedor.destroy
    respond_to do |format|
      format.html { redirect_to proveedores_url, notice: 'Proveedor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_proveedor
      @proveedor = Proveedor.find(params[:id])
    end

    def proveedor_params
      params.require(:proveedor).permit(:nombre, :razon_social, :rut, :direccion, :telefono, :email, :url)
    end
end
