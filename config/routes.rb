Rails.application.routes.draw do
  resources :flats
  resources :club_passes do
    resources :orders do
      resources :reviews
    end
  end
  devise_for :users
  root 'pages#home'

  # Orders routes
  get '/orders', to: 'orders#index'
end
