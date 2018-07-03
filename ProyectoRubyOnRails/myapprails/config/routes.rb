Rails.application.routes.draw do
  root 'static_pages#home'
  #get  'static_pages/help'
  get    'users/new'
  get    'sessions/new'
  get    '/help',       to: 'static_pages#help'
  get    '/signup',     to: 'users#new'
  post   '/signup',     to: 'users#create'
  get    '/login',      to: 'sessions#new'
  post   '/login',      to: 'sessions#create'
  delete '/logout',     to: 'sessions#destroy'
  get    'categories/index'
  resources :products
  resources :categories
  resources :users
  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
      resources :categories
  end
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
