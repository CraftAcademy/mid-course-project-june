Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: 'registrations' }
  resources :orphanage

  root 'homepage#index'

end
