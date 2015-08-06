class ColoresController < ApplicationController
  before_action :set_color, only: [:show, :edit, :update, :destroy]

  # GET /colores
  # GET /colores.json
  def index
    @colores = Color.all
  end

  # GET /colores/1
  # GET /colores/1.json
  def show
  end

  # GET /colores/new
  def new
    @color = Color.new
  end

  # GET /colores/1/edit
  def edit
  end

  # POST /colores
  # POST /colores.json
  def create
    @color = Color.new(color_params)

    respond_to do |format|
      if @color.save
        format.html { redirect_to @color, notice: 'Color was successfully created.' }
        format.json { render :show, status: :created, location: @color }
      else
        format.html { render :new }
        format.json { render json: @color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colores/1
  # PATCH/PUT /colores/1.json
  def update
    respond_to do |format|
      if @color.update(color_params)
        format.html { redirect_to @color, notice: 'Color was successfully updated.' }
        format.json { render :show, status: :ok, location: @color }
      else
        format.html { render :edit }
        format.json { render json: @color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colores/1
  # DELETE /colores/1.json
  def destroy
    @color.destroy
    respond_to do |format|
      format.html { redirect_to colores_url, notice: 'Color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_color
      @color = Color.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def color_params
      params.require(:color).permit(:nombre, :codigo)
    end
end
