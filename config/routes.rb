Rails.application.routes.draw do
  devise_for :users
  get 'users/:id' => 'users#show'
  get 'walks/:id' => 'walks#show'
  root 'walks#index'
  get 'walks' => 'walks#index'
  get 'walks/new' => 'walks#new'
  post 'walks' => 'walks#create'
  delete 'walks/:id' => 'walks#destroy'
  get 'walks/:id/edit' => 'walks#edit'
  patch 'walks/:id' => 'walks#update'
end