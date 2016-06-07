Rails.application.routes.draw do
  root 'walks#index'
  resources :walk
end
