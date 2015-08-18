class TallasController < ApplicationController
  before_action :set_talla, only: [:show, :edit, :update, :destroy]

  def index
    @tallas = Talla.all
  end

  def show
  end

  def new
    @talla = Talla.new
  end

  def edit
  end

  def create
    @talla = Talla.new(talla_params)

    respond_to do |format|
      if @talla.save
        format.html { redirect_to @talla, notice: 'Talla was successfully created.' }
        format.json { render :show, status: :created, location: @talla }
      else
        format.html { render :new }
        format.json { render json: @talla.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @talla.update(talla_params)
        format.html { redirect_to @talla, notice: 'Talla was successfully updated.' }
        format.json { render :show, status: :ok, location: @talla }
      else
        format.html { render :edit }
        format.json { render json: @talla.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @talla.destroy
    respond_to do |format|
      format.html { redirect_to tallas_url, notice: 'Talla was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_talla
      @talla = Talla.find(params[:id])
    end

    def talla_params
      params.require(:talla).permit(:nombre)
    end
end
