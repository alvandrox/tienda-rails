class CreateJoinTableProductoTalla < ActiveRecord::Migration
  def change
    create_join_table :productos, :tallas do |t|
      # t.index [:producto_id, :talla_id]
      # t.index [:talla_id, :producto_id]
    end
  end
end
