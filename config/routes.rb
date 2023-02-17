Rails.application.routes.draw do
  root "to_dos#index"
  
  get 'to_dos/index'
  
  resources :categories, only: [:index, :show, :new, :edit, :create, :update]
end
