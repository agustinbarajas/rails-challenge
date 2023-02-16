Rails.application.routes.draw do
  root "to_dos#index"

  get 'to_dos/index'
end
