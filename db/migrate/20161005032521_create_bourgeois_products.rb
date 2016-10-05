class CreateBourgeoisProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :bourgeois_products do |t|
      t.string :name
      t.integer :current_price

      t.timestamps
    end
  end
end
