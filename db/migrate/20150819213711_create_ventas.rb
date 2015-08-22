class CreateVentas < ActiveRecord::Migration
  def change
    create_table :ventas do |t|

      t.timestamps null: false
    end
  end
end
