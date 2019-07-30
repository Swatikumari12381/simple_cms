Rails.application.routes.draw do

  get 'sections/index'
  get 'pages/index'
  get 'authors/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'home/index'
  # get 'subjects/index'
  resources :subjects
  resources :pages
  resources :sections
end
