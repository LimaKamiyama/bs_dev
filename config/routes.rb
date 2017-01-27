Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/new_thought' => 'home#new_thought'
  get 'home/new_action' => 'home#new_action'
  post 'thoughts' => 'home#create'
  post 'actions' => 'home#create'
  delete 'thoughts/:id' => 'home#destroy'
  delete 'actions/:id' => 'home#destroy'
  get 'thoughts/:id/edit' => 'home#edit_thought'
  get 'actions/:id/edit' => 'home#edit_action'
  patch 'thoughts/:id' => 'home#update'
  patch 'actions/:id' => 'home#update'
  get  'users/:id' => 'users#show'
  get 'thoughts/:id' => 'home#show'
  post 'thoughts/:id/comments' => 'comments#create'
end
