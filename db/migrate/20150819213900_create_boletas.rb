class CreateBoletas < ActiveRecord::Migration
  def change
    create_table :boletas do |t|
      t.date :fecha
      t.integer :precio
      t.references :venta, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
