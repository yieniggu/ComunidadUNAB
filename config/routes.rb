Rails.application.routes.draw do
  resources :comments
  resources :ratings
  resources :courses
  resources :users
  root to: 'main#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
