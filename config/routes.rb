Rails.application.routes.draw do
  
  
  resources :gallery_images
  resources :orders
  root 'home#index'
  
  get 'home/Q_and_A', to: 'home#Q_and_A'
  get 'home/login', to: 'home#login'
  get 'home/childish', to: 'home#childish'

  resources :galleries do
    resources :images, :only => [:create, :destroy] # support #create and #destroy
  end 
  resources :models
  resources :categories
  resources :events
  resources :social_networks
  resources :profiles
  resources :contacts
  resources :questions

  namespace :admin do
    get 'home/index'
  end

  devise_for :users, :controllers => { :passwords => 'scope/passwords', :registrations => 'scope/registrations'}
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
