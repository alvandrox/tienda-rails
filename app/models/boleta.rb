class Boleta < ActiveRecord::Base
  belongs_to :venta


  def self.search(search)
    where('fecha LIKE ?', "%#{search}%")

    # Esta Consulta busca en todos los campos
    #where('id LIKE ? OR fecha LIKE ? OR precio LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%")
    #where('precio LIKE ?', "%#{search}%")
  end

end
