Rails.application.routes.draw do

  get 'display/show'
  get 'public/index'
  devise_for :admin_users
  get 'sections/index'
  get 'pages/index'
  get 'authors/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'home/index'

  get 'public/display'
  # get 'subjects/index'
  resources :subjects
  resources :pages
  resources :sections
  resources :public
  resources :display, only: [:index, :show]
end
