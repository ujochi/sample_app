Rails.application.routes.draw do
  resources :relationships,       only: [:create, :destroy]
  resources :microposts,          only: [:create, :destroy]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :account_activations, only: [:edit]
  resources :users do
    member do
      get :following, :followers
    end
  end
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
