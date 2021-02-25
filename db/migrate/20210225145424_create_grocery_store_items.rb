class CreateGroceryStoreItems < ActiveRecord::Migration[6.0]
  def change
    create_table :grocery_store_items do |t|
      t.belongs_to :grocery_store, null: false, foreign_key: true
      t.integer :ingredient
      t.integer :price
      t.integer :quantity
      t.string :unit

      t.timestamps
    end
  end
end
