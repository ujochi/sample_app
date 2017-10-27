Rails.application.routes.draw do
  resources :users
  get  '/singup', to: 'users#new'
  get  '/home', to: 'static_pages#home'
  get  '/about', to: 'static_pages#about'
  get  '/help', to: 'static_pages#help'
  get  '/contact', to: 'static_pages#contact'
  root 'static_pages#home'
end
