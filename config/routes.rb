Rails.application.routes.draw do

  devise_for :users
  root "goods#search"
  get "/search",  to: 'goods#search'
  get "/user/:id", to: "users#show"
  post "goods", to: "goods#create"
  delete "/delete", to: "goods#destroy"

  end


# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html