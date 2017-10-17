Rails.application.routes.draw do
  
  root 'home#index'

  resources :galleries
  resources :models
  resources :categories
  resources :events
  resources :social_networks
  resources :profiles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
