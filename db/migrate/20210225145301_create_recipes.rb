class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.integer :portions
      t.text :instructions

      t.timestamps
    end
  end
end
