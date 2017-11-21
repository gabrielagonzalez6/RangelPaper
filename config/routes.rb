Rails.application.routes.draw do
  
  
  resources :gallery_images
  resources :orders
  root 'home#index'
  
  get 'home/Q_and_A', to: 'home#Q_and_A'
  get 'home/login', to: 'home#login'
  get 'home/childish', to: 'home#childish'
  get 'home/printable', to: 'home#printable'
  get 'home/accessories', to: 'home#accessories'
  get 'home/articles', to: 'home#articles'
  get 'home/adult', to: 'home#adult'
  get 'home/boxes', to: 'home#boxes'
  get 'home/gifts', to: 'home#gifts'
  get 'home/memories', to: 'home#memories'
  get 'home/others', to: 'home#others'
  get 'home/wedding', to: 'home#wedding'

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
