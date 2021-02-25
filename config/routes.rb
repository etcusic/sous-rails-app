Rails.application.routes.draw do
  resources :ingredients, only: [:index]
  resources :grocery_stores, only: [:show] 
  resources :pantry, only: [:show]
  resources :recipes # should need all of these routes - nest within user
  resources :grocery_lists, only: [:show] # will want to attach user to this and nest

  # don't need these for now:
  # resources :pantry_items
  # resources :grocery_list_items
  # resources :recipe_items
end
