Rails.application.routes.draw do
  devise_for :users
  root 'walks#index'
  get 'walks' => 'walks#index'
  get 'walks/new' => 'walks#new'
  post 'walks' => 'walks#create'
end
