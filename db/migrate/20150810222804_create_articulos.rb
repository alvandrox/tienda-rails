class CreateArticulos < ActiveRecord::Migration
  def change
    create_table :articulos do |t|
      t.string :ean
      t.references :producto, index: true, foreign_key: true
      t.references :color, index: true, foreign_key: true
      t.references :talla, index: true, foreign_key: true
      t.integer :precio_costo
      t.integer :precio_venta
      t.integer :stock

      t.timestamps null: false
    end
  end
end
