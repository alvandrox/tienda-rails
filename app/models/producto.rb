class Producto < ActiveRecord::Base
  belongs_to :marca
  belongs_to :categoria
  has_and_belongs_to_many :colores
  has_and_belongs_to_many :tallas

  validates_presence_of :codigo
end
