class Articulo < ActiveRecord::Base
  belongs_to :producto
  belongs_to :color
  belongs_to :talla
end
