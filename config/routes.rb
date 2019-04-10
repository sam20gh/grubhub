Rails.application.routes.draw do
  resources :menus
  resources :orders
  resources :customers
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # get "/restaurants", to: "restaurants#index"
  # get "/restaurant/new", to: "restaurants#new"
end
