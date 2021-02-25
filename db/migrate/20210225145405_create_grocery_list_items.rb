class CreateGroceryListItems < ActiveRecord::Migration[6.0]
  def change
    create_table :grocery_list_items do |t|
      t.belongs_to :grocery_list, null: false, foreign_key: true
      t.integer :ingredient
      t.integer :grocery_store
      t.integer :quantity
      t.string :unit

      t.timestamps
    end
  end
end
