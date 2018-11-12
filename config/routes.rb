Rails.application.routes.draw do
  root to: 'restaurants#index'

  # Rails route syntax
  # get/post/patch/update/delete
  # Http VERB path options = {}
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/new', to: 'restaurants#new'
  # get 'restaurants/:id', to: 'restaurants#show', as: :restaurant
  # post 'restaurants', to: 'restaurants#create'
  # get 'restaurants/:id/edit', to: 'restaurants#edit'
  # patch 'restaurants/:id', to: 'restaurants#update'
  # update 'restaurants/:id', to: 'restaurants#update'
  # delete 'restaurants/:id', to: 'restaurants#destroy'
  resources :restaurants

end
