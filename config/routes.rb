Rails.application.routes.draw do

  devise_for :users, controllers: { registrations: :registrations }
  resources :orphanage

  root controller: :homepage, action: :index

end
