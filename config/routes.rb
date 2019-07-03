Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  resources :users
  resource :session, only: [:new, :create, :destroy]
end
