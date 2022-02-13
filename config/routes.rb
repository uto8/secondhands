Rails.application.routes.draw do
  devise_for :users, controllers:{
    registrations: "users/registrations"
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "pages#home"
  resources :posts
  resources :buys
  resources :notifications, only: :index
  # get "/buys/new/:id",to: "buys#new"
  post 'buys', to: 'buys#create'
  # get 'profile', action: :show, controller: 'users'
end