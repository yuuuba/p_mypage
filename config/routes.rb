Rails.application.routes.draw do
  root to: 'posts#new'
  get "users/:id" , to: "users#show", as: 'user'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get "mypage", to: "users#mypage"
  resources :posts
end
