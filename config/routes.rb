Rails.application.routes.draw do
  root 'walks#index'
  get 'walks' => 'walks#index'
  get 'walks/new' => 'walks#new'
  post 'walks' => 'walks#create'
end
