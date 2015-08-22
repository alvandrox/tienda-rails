class CreateSinBoletas < ActiveRecord::Migration
  def change
    create_table :sin_boletas do |t|
      t.references :venta, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
