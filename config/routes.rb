Rails.application.routes.draw do
  devise_for :users
  root to: 'haircuts#index'

  resources :bookings, only: [:index, :create]

  get '/contact', to: "bookings#contact"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
