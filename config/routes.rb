# == Route Map
#

Rails.application.routes.draw do
  devise_for :users  
  resources :posts, only: [:index, :show]
  resources :users, only: [:index, :show]
  
  namespace :profile do
    resources :posts, except: [:index, :show]    
  end

  root 'posts#index'

end
