Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only:[:destroy, :update, :index, :show, :create]
  resources :artworks, only:[:destroy, :update, :show, :create]
  # get '/users' => "users#index"
  # post '/users' => "users#create"
  # get '/users/new' => "users#new"
  # get '/users/:id/edit' => 'users#new', :as => 'edit_user'
  # get '/users/:id' => 'users#show'
  # patch '/user/:id' => 'users#update'
  # put '/user/:id' => 'users#update'
  # delete '/user/:id' => 'users#destroy'
  resources :artwork_shares, only:[:create, :destroy]
  get '/users/:user_id/artworks' => 'artworks#index'
  resources :comments, only:[:create, :destroy]
  get '/users/:user_id/comments' => 'comments#index'
  get '/artworks/:artwork_id/comments' => 'comments#index'
end
