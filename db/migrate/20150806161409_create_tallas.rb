class CreateTallas < ActiveRecord::Migration
  def change
    create_table :tallas do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
