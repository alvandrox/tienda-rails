class CreateColores < ActiveRecord::Migration
  def change
    create_table :colores do |t|
      t.string :nombre
      t.string :codigo

      t.timestamps null: false
    end
  end
end
