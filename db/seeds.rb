# rails g model IngredientCategory name:string --no-test-framework
# rails g resource Ingredient name:string ingredient_category:belongs_to --no-test-framework

# rails g resource Recipe title:string portions:integer instructions:text --no-test-framework
# rails g resource RecipeItem recipe:belongs_to ingredient:integer quantity:integer --no-test-framework

# rails g resource Pantry --no-test-framework
# rails g resource PantryItem pantry:belongs_to ingredient:integer quantity:integer --no-test-framework

# rails g resource GroceryList --no-test-framework
# rails g resource GroceryListItem grocery_list:belongs_to ingredient:integer grocery_store:integer quantity:integer unit:string --no-test-framework

# rails g resource GroceryStore name:string --no-test-framework
# rails g resource GroceryStoreItem grocery_store:belongs_to ingredient:integer price:integer quantity:integer unit:string --no-test-framework
