Rails.application.routes.draw do

  root 'trips#index'

  resources :trips

  resources :days

  devise_for :users

  resources :places

  resources :transports

end
