Rails.application.routes.draw do
  resources :users, only: [:new, :create, :edit, :update, :destroy]

  get 'users/:id/password-change', to: 'users#password_change'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  get '/', to: 'sessions#index'
  root 'sessions#index'


  # change password
  get '/change-password-email', to: 'users#change_password_email'
  # get 'authorized', to: 'sessions#page_requires_login'
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end