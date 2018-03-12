Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users, only: [:create, :new, :show]

  resources :bands

  resources :albums, only: [:create, :edit, :show, :update, :destroy]
  get '/bands/:band_id/albums/new', to: 'albums#new', as: 'new_band_album'

  resource :session, only: [:new, :create, :destroy]
end
