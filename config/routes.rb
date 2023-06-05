Rails.application.routes.draw do
  get 'users/show'
  root to: 'posts#new'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  get "users/profile" => "users#show"
  resources :posts
end
