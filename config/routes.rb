Rails.application.routes.draw do
  root to: 'posts#new'
  devise_for :users
  resources :posts
end
