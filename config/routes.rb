Rails.application.routes.draw do
  # put "/recipes/ingredientsearch", to:'recipes#search', as: 'recipe_search'
  resources :ingredients
  resources :recipes
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
