Rails.application.routes.draw do
  resources :restaurants
  resources :restaurant_reviews
  get 'users', to: "static_pages#home"
  root 'static_pages#home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
