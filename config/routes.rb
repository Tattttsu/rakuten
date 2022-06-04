Rails.application.routes.draw do
  devise_for :users
  root "goods#search"
  get "/search",  to: 'goods#search'
  get "/user", to: "user"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
