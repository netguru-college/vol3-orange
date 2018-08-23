Rails.application.routes.draw do

  resources :days
  
  devise_for :users

end
