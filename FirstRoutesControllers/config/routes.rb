Rails.application.routes.draw do
  resources :users, only:[:index, :create, :show, :update, :destroy]
  resources :contacts, only:[:index, :create, :show, :update, :destroy]
  # get 'users/' => 'users#index'
  # post 'users/' => 'users#create'
  # get 'users/new' => 'users#new'
  # get 'users/:id' => 'users#show'
  # get 'users/:id/edit' => 'users#edit'
  # patch 'users/:id' => 'users#update'
  # put 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'


end
