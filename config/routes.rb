Rails.application.routes.draw do
  
  resources :orphanage

  root 'homepage#index'

end
