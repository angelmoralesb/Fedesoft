Rails.application.routes.draw do
  get 'users/new'
  get 'sessions/new'
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :products
  resources :categories
  resources :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
