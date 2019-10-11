Rails.application.routes.draw do
  resources :users
  resources :comments
  resources :ratings
  resources :courses

  root to: 'main#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Indica que se creen y destruyan sesiones por medio de un login
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

end
