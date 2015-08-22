class SinBoletasController < ApplicationController
  before_action :set_sin_boleta, only: [:show, :edit, :update, :destroy]

  # GET /sin_boletas
  # GET /sin_boletas.json
  def index
    @sin_boletas = SinBoleta.all
  end

  # GET /sin_boletas/1
  # GET /sin_boletas/1.json
  def show
  end

  # GET /sin_boletas/new
  def new
    @sin_boleta = SinBoleta.new
  end

  # GET /sin_boletas/1/edit
  def edit
  end

  # POST /sin_boletas
  # POST /sin_boletas.json
  def create
    @sin_boleta = SinBoleta.new(sin_boleta_params)

    respond_to do |format|
      if @sin_boleta.save
        format.html { redirect_to @sin_boleta, notice: 'Sin boleta was successfully created.' }
        format.json { render :show, status: :created, location: @sin_boleta }
      else
        format.html { render :new }
        format.json { render json: @sin_boleta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sin_boletas/1
  # PATCH/PUT /sin_boletas/1.json
  def update
    respond_to do |format|
      if @sin_boleta.update(sin_boleta_params)
        format.html { redirect_to @sin_boleta, notice: 'Sin boleta was successfully updated.' }
        format.json { render :show, status: :ok, location: @sin_boleta }
      else
        format.html { render :edit }
        format.json { render json: @sin_boleta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sin_boletas/1
  # DELETE /sin_boletas/1.json
  def destroy
    @sin_boleta.destroy
    respond_to do |format|
      format.html { redirect_to sin_boletas_url, notice: 'Sin boleta was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sin_boleta
      @sin_boleta = SinBoleta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sin_boleta_params
      params.require(:sin_boleta).permit(:venta_id)
    end
end
