Rails.application.routes.draw do

  resources :users, only: [:new, :create]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'


  get '/', to: 'sessions#index'

  get 'authorized', to: 'sessions#page_requires_login'
end