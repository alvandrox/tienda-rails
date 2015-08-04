class Marca < ActiveRecord::Base
  belongs_to :proveedor
  has_many :colores
  has_many :productos
end
