class ColoresController < ApplicationController
  def create
    marca = Marca.find params[:marca_id]
    color = Color.new color_params.merge! marca_id: marca.id

    if color.save
      redirect_to marca, notice: 'Color se a guardado Exitosamente'
    else
      redirect_to marca, alert: 'A ocurrido un error Color no se a guardado'
    end
  end

  def color_params
    params.require(:color).permit(:nombre, :codigo)
  end
end
