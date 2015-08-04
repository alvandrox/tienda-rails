class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :codigo
      t.string :descripcion
      t.references :marca, index: true, foreign_key: true
      t.references :categoria, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
