Rails.application.routes.draw do
  resources :grocery_store_items
  resources :grocery_stores
  resources :grocery_list_items
  resources :grocery_lists
  resources :pantry_items
  resources :pantries
  resources :recipe_items
  resources :recipes
  resources :ingredients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
