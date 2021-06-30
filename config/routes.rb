Rails.application.routes.draw do
  resources :recipe_pins
  resources :board_pins
  resources :non_dairy_options
  resources :brands
  resources :categories
  resources :recipes
  resources :boards
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
