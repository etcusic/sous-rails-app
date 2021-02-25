class ChangeQuantityAndPriceToFloat < ActiveRecord::Migration[6.0]
  def change
    change_column :grocery_list_items, :quantity, :float
    change_column :grocery_store_items, :quantity, :float
    change_column :grocery_store_items, :price, :float
    change_column :pantry_items, :quantity, :float
    change_column :recipe_items, :quantity, :float
  end
end
