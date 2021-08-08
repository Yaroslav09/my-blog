# == Route Map
#

Rails.application.routes.draw do
  devise_for :users  
  resources :posts
  get '/users', to: 'users#index'  

  root 'posts#index'

end
