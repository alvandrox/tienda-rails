class CreateJoinTableColorProducto < ActiveRecord::Migration
  def change
    create_join_table :colores, :productos do |t|
      # t.index [:color_id, :producto_id]
      # t.index [:producto_id, :color_id]
    end
  end
end
