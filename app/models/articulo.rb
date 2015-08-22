class Articulo < ActiveRecord::Base
  belongs_to :producto
  belongs_to :color
  belongs_to :talla
  has_and_belongs_to_many :ventas
end
