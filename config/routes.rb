Rails.application.routes.draw do
  resources :flats
  resources :club_passes do
    resources :orders, only: %i[new create edit update] do
      resources :reviews
    end
  end
  devise_for :users
  root 'pages#home'
  resources :orders, only: %i[index show destroy]
end
