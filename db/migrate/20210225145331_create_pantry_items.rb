class CreatePantryItems < ActiveRecord::Migration[6.0]
  def change
    create_table :pantry_items do |t|
      t.belongs_to :pantry, null: false, foreign_key: true
      t.integer :ingredient
      t.integer :quantity

      t.timestamps
    end
  end
end
