Rails.application.routes.draw do
  resources :restaurants
  resources :restaurant_reviews
  get 'users', to: "static_pages#home"
  root 'static_pages#home'
  devise_for :users

  devise_scope :user do  
     get '/users/sign_out' => 'devise/sessions#destroy'     
  end
  # get 'users/show'
  get 'users/show/:id', to: "users#show", as: 'users_show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
