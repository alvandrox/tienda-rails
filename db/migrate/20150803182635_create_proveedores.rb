class CreateProveedores < ActiveRecord::Migration
  def change
    create_table :proveedores do |t|
      t.string :nombre
      t.string :razon_social
      t.string :rut
      t.string :direccion
      t.string :telefono
      t.string :email
      t.string :url

      t.timestamps null: false
    end
  end
end
