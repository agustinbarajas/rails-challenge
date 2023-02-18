Rails.application.routes.draw do
  root "to_dos#index"
  
  resources :to_dos
  
  resources :categories, only: [:index, :show, :new, :edit, :create, :update]
end
