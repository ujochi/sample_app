Rails.application.routes.draw do
  # get 'sessions/new'
  resources :account_activations, only: [:edit]
  resources :users
  get  '/signup', to: 'users#new'
  post '/signup',  to: 'users#create'
  get  '/home', to: 'static_pages#home'
  get  '/about', to: 'static_pages#about'
  get  '/help', to: 'static_pages#help'
  get  '/contact', to: 'static_pages#contact'
  root 'static_pages#home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

end
