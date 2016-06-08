Rails.application.routes.draw do
  devise_for :users
  root 'walks#index'
  # get 'users/:id' => 'users#show'
  # get 'walks/:id' => 'walks#show'
  # get 'walks' => 'walks#index'
  # get 'walks/new' => 'walks#new'
  # post 'walks' => 'walks#create'
  # delete 'walks/:id' => 'walks#destroy'
  # get 'walks/:id/edit' => 'walks#edit'
  # patch 'walks/:id' => 'walks#update'
  resources :walks do
    resources :reviews, only: [:create]
  end
  resources :users, only: [:show]
end