Rails.application.routes.draw do
  root 'trips#index'
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks' }

  resources :trips do
    resources :user_trips, path: :users, module: :trips
    resources :places do
      resources :attractions, :transports,
        :hotels
    end
  end
end
