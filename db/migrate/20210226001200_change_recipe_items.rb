class ChangeRecipeItems < ActiveRecord::Migration[6.0]
  def change
    change_column :recipe_items, :ingredient, :string
  end
end
