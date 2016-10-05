class AddShortAndLongDescriptionToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :bourgeois_products, :short_description, :string
    add_column :bourgeois_products, :long_description, :text
  end
end
