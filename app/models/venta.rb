class Venta < ActiveRecord::Base
  has_one :boleta
  has_one :factura
  has_one :sin_boleta
  has_and_belongs_to_many :articulos
end
