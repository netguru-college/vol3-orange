Rails.application.routes.draw do

  root 'trips#index'

  resources :trips do
    resources :user_trips, path: users, module: :trips
  end

  resources :days

  devise_for :users

  resources :places

  resources :transports

end
