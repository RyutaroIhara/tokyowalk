Rails.application.routes.draw do
  devise_for :users
  get 'users/:id' => 'users#show'
  root 'walks#index'
  get 'walks' => 'walks#index'
  get 'walks/new' => 'walks#new'
  post 'walks' => 'walks#create'
end