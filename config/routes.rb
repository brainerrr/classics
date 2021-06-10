Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'account', to: 'dashboards#account'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cars, only: [:new, :index, :create, :show] do
     resources :bookings, only: [:new, :create, :index, :show]
  end
end
