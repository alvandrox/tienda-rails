class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :articulos, :ventas do |t|
      # t.index [:articulo_id, :venta_id]
      # t.index [:venta_id, :articulo_id]
    end
  end
end
