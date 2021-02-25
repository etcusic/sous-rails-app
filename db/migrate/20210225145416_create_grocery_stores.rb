class CreateGroceryStores < ActiveRecord::Migration[6.0]
  def change
    create_table :grocery_stores do |t|
      t.string :name

      t.timestamps
    end
  end
end
