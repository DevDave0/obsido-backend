Rails.application.routes.draw do
  resources :message_boards
  resources :comments
  resources :sub_categories
  resources :cryptos
  resources :stocks
  resources :user_categories
  resources :categories
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
