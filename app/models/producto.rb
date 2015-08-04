class Producto < ActiveRecord::Base
  belongs_to :marca
  belongs_to :categoria
end
