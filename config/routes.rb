Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cars, only: [:new, :index, :create, :show] do
     resources :bookings, only: [:new, :index, :show, :create] do
       resources :reviews, only: [:new, :create]
     end
  end

end
