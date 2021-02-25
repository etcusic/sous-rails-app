class AddNameToPantry < ActiveRecord::Migration[6.0]
  def change 
    add_column :pantries, :name, :string
  end
end
