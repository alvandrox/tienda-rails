class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.references :venta, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
