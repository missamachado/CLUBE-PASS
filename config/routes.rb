Rails.application.routes.draw do
  devise_for :users
  root 'pages#home'
  get '/offers', to: 'offers#index'
  get '/offers/:id', to: 'offers#show'
  get '/offers/:id/orders/new', to: 'orders#new'
  get '/offers/:id/reviews/new', to: 'reviews#new'
  get '/offers/new', to: 'offers#new'

  # Orders routes
  get '/orders', to: 'orders#index'
end
