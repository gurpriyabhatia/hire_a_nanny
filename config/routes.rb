Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bookings do
    resources :reviews, only: [ :new, :create ]
  end

  resources :nannies, only: [:index, :show] do
     resources :bookings
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
