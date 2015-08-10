class Color < ActiveRecord::Base
  has_and_belongs_to_many :productos
  has_many :articulos
end
