Rails.application.routes.draw do
  resources :sessions, only: [:create]
  resources :registrations, only: [:create]
  resources :trips, only: %i[create destroy]
  resources :destinies, only: [:create]
  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'
  get :index, to: 'destinies#index'
  get :list_trips, to: 'trips#index'
  root to: 'static#home'
end
