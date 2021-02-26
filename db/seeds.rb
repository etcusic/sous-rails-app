# rails g resource Ingredient name:string --no-test-framework

# rails g resource Recipe title:string portions:integer instructions:text --no-test-framework
# rails g resource RecipeItem recipe:belongs_to ingredient:integer quantity:integer --no-test-framework

# rails g resource Pantry --no-test-framework
# rails g resource PantryItem pantry:belongs_to ingredient:integer quantity:integer --no-test-framework

# rails g resource GroceryList --no-test-framework
# rails g resource GroceryListItem grocery_list:belongs_to ingredient:integer grocery_store:integer quantity:integer unit:string --no-test-framework

# rails g resource GroceryStore name:string --no-test-framework
# rails g resource GroceryStoreItem grocery_store:belongs_to ingredient:integer price:integer quantity:integer unit:string --no-test-framework

# set up user ?? => pantry & grocery_list belongs_to user
# recipe can belong to user as well. Another user can create a copy to have/edit with original_recipe id to be able reference


Ingredient.delete_all
GroceryStoreItem.delete_all
RecipeItem.delete_all
GroceryStore.delete_all
Pantry.delete_all
Recipe.delete_all


Ingredient.create(id: 1, name: "green bell pepper")
Ingredient.create(id: 2, name: "red bell pepper")
Ingredient.create(id: 3, name: "white onion")
Ingredient.create(id: 4, name: "red onion")
Ingredient.create(id: 5, name: "yellow onion")
Ingredient.create(id: 6, name: "cucumber")
Ingredient.create(id: 7, name: "spinach")
Ingredient.create(id: 8, name: "tomato")
Ingredient.create(id: 9, name: "celery")
Ingredient.create(id: 10, name: "carrot")
Ingredient.create(id: 11, name: "garlic")
Ingredient.create(id: 12, name: "mushroom")
Ingredient.create(id: 13, name: "zucchini")
Ingredient.create(id: 14, name: "chicken")
Ingredient.create(id: 15, name: "rice")

GroceryStore.create(id: 1, name: "The Grocery Store")

GroceryStoreItem.create(id: 1, price: 1, quantity: 1, unit: "ounce", ingredient: 1, grocery_store_id: 1)
GroceryStoreItem.create(id: 2, price: 1, quantity: 1, unit: "ounce", ingredient: 2, grocery_store_id: 1)
GroceryStoreItem.create(id: 3, price: 1, quantity: 1, unit: "ounce", ingredient: 3, grocery_store_id: 1)
GroceryStoreItem.create(id: 4, price: 1, quantity: 1, unit: "ounce", ingredient: 4, grocery_store_id: 1)
GroceryStoreItem.create(id: 5, price: 1, quantity: 1, unit: "ounce", ingredient: 5, grocery_store_id: 1)
GroceryStoreItem.create(id: 6, price: 1, quantity: 1, unit: "ounce", ingredient: 6, grocery_store_id: 1)
GroceryStoreItem.create(id: 7, price: 1, quantity: 1, unit: "ounce", ingredient: 7, grocery_store_id: 1)
GroceryStoreItem.create(id: 8, price: 1, quantity: 1, unit: "ounce", ingredient: 8, grocery_store_id: 1)
GroceryStoreItem.create(id: 9, price: 1, quantity: 1, unit: "ounce", ingredient: 9, grocery_store_id: 1)
GroceryStoreItem.create(id: 10, price: 1, quantity: 1, unit: "ounce", ingredient: 10, grocery_store_id: 1)
GroceryStoreItem.create(id: 11, price: 1, quantity: 1, unit: "ounce", ingredient: 11, grocery_store_id: 1)
GroceryStoreItem.create(id: 12, price: 1, quantity: 1, unit: "ounce", ingredient: 12, grocery_store_id: 1)
GroceryStoreItem.create(id: 13, price: 1, quantity: 1, unit: "ounce", ingredient: 13, grocery_store_id: 1)
GroceryStoreItem.create(id: 14, price: 1, quantity: 1, unit: "ounce", ingredient: 14, grocery_store_id: 1)
GroceryStoreItem.create(id: 15, price: 1, quantity: 1, unit: "ounce", ingredient: 15, grocery_store_id: 1)

Pantry.create(id: 1, name: "My Pantry")

3.times do |i|
    Recipe.create(
        id: (i + 1),
        title: "Recipe # #{i + 1}",
        portions: 1,
        instructions: "Cook rice. Cook chicken. Cut veggies and wrist twist em like it's stir-fry"
    )
end

# Recipe #1 - unstuffed peppers
RecipeItem.create(id: 1, recipe_id: 1, ingredient: "green bell pepper", quantity: 1)
RecipeItem.create(id: 2, recipe_id: 1, ingredient: "red bell pepper", quantity: 1)
RecipeItem.create(id: 3, recipe_id: 1, ingredient: "red onion", quantity: 1)
RecipeItem.create(id: 4, recipe_id: 1, ingredient: "garlic", quantity: 1)
RecipeItem.create(id: 5, recipe_id: 1, ingredient: "chicken", quantity: 1)
RecipeItem.create(id: 6, recipe_id: 1, ingredient: "rice", quantity: 1)

# Recipe #2 - zuc and mushroom stir fry
RecipeItem.create(id: 7, recipe_id: 2, ingredient: "zucchini", quantity: 1)
RecipeItem.create(id: 8, recipe_id: 2, ingredient: "mushroom", quantity: 1)
RecipeItem.create(id: 9, recipe_id: 2, ingredient: "chicken", quantity: 1)
RecipeItem.create(id: 10, recipe_id: 2, ingredient: "rice", quantity: 1)
RecipeItem.create(id: 11, recipe_id: 2, ingredient: "carrot", quantity: 1)
RecipeItem.create(id: 12, recipe_id: 2, ingredient: "white onion", quantity: 1)

# Recipe #3 - thai stir fry
RecipeItem.create(id: 13, recipe_id: 3, ingredient: "rice", quantity: 1)
RecipeItem.create(id: 14, recipe_id: 3, ingredient: "chicken", quantity: 1)
RecipeItem.create(id: 15, recipe_id: 3, ingredient: "tomato", quantity: 1)
RecipeItem.create(id: 16, recipe_id: 3, ingredient: "garlic", quantity: 1)
RecipeItem.create(id: 17, recipe_id: 3, ingredient: "yellow onion", quantity: 1)
RecipeItem.create(id: 18, recipe_id: 3, ingredient: "green bell pepper", quantity: 1)

# Ingredient.create(id: 16, name: "")
# Ingredient.create(id: 17, name: "")
# Ingredient.create(id: 18, name: "")
# Ingredient.create(id: 19, name: "")
# Ingredient.create(id: 20, name: "")
# Ingredient.create(id: 21, name: "")
# Ingredient.create(id: 22, name: "")
# Ingredient.create(id: 23, name: "")
# Ingredient.create(id: 24, name: "")
# Ingredient.create(id: 25, name: "")
# Ingredient.create(id: 26, name: "")
# Ingredient.create(id: 27, name: "")
# Ingredient.create(id: 28, name: "")
# Ingredient.create(id: 29, name: "")
# Ingredient.create(id: 30, name: "")
# Ingredient.create(id: 31, name: "")
# Ingredient.create(id: 32, name: "")
# Ingredient.create(id: 33, name: "")
# Ingredient.create(id: 34, name: "")
# Ingredient.create(id: 35, name: "")
# Ingredient.create(id: 36, name: "")
# Ingredient.create(id: 37, name: "")
# Ingredient.create(id: 38, name: "")
# Ingredient.create(id: 39, name: "")
# Ingredient.create(id: 40, name: "")
# Ingredient.create(id: 41, name: "")
# Ingredient.create(id: 42, name: "")
# Ingredient.create(id: 43, name: "")
# Ingredient.create(id: 44, name: "")
# Ingredient.create(id: 45, name: "")
# Ingredient.create(id: 46, name: "")
# Ingredient.create(id: 47, name: "")
# Ingredient.create(id: 48, name: "")
# Ingredient.create(id: 49, name: "")
# Ingredient.create(id: 50, name: "")
# Ingredient.create(id: 51, name: "")
# Ingredient.create(id: 52, name: "")
# Ingredient.create(id: 53, name: "")
# Ingredient.create(id: 54, name: "")
# Ingredient.create(id: 55, name: "")
# Ingredient.create(id: 56, name: "")
# Ingredient.create(id: 57, name: "")
# Ingredient.create(id: 58, name: "")
# Ingredient.create(id: 59, name: "")
# Ingredient.create(id: 60, name: "")
# Ingredient.create(id: 61, name: "")
# Ingredient.create(id: 62, name: "")
# Ingredient.create(id: 63, name: "")
# Ingredient.create(id: 64, name: "")
# Ingredient.create(id: 65, name: "")
# Ingredient.create(id: 66, name: "")
# Ingredient.create(id: 67, name: "")
# Ingredient.create(id: 68, name: "")
# Ingredient.create(id: 69, name: "")
# Ingredient.create(id: 70, name: "")
# Ingredient.create(id: 71, name: "")
# Ingredient.create(id: 72, name: "")
# Ingredient.create(id: 73, name: "")
# Ingredient.create(id: 74, name: "")
# Ingredient.create(id: 75, name: "")
# Ingredient.create(id: 76, name: "")
# Ingredient.create(id: 77, name: "")
# Ingredient.create(id: 78, name: "")
# Ingredient.create(id: 79, name: "")
# Ingredient.create(id: 80, name: "")
# Ingredient.create(id: 81, name: "")
# Ingredient.create(id: 82, name: "")
# Ingredient.create(id: 83, name: "")
# Ingredient.create(id: 84, name: "")
# Ingredient.create(id: 85, name: "")
# Ingredient.create(id: 86, name: "")
# Ingredient.create(id: 87, name: "")
# Ingredient.create(id: 88, name: "")
# Ingredient.create(id: 89, name: "")
# Ingredient.create(id: 90, name: "")
# Ingredient.create(id: 91, name: "")
# Ingredient.create(id: 92, name: "")
# Ingredient.create(id: 93, name: "")
# Ingredient.create(id: 94, name: "")
# Ingredient.create(id: 95, name: "")
# Ingredient.create(id: 96, name: "")
# Ingredient.create(id: 97, name: "")
# Ingredient.create(id: 98, name: "")
# Ingredient.create(id: 99, name: "")
