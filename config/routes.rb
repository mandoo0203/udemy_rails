Rails.application.routes.draw do
  get 'articles/new'

  root 'pages#home'


  get 'about', to: 'pages#about'

  resources :articles

  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  #post 'users', to: 'users#create'
  resources :users, except: [:new]

  resources :categories, except: [:destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
