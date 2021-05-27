Rails.application.routes.draw do
  get 'reserves/:id/show' => 'reserves#show'
  get 'reserves/index'
  post 'reserves/:id/new' => 'reserves#new'
  get 'reserves/:id/new' => 'reserves#new'
  post 'reserves/create' => 'reserves#create'

  get 'rooms/index' => "rooms#index"
  get 'rooms/search' => "rooms#search"
  post 'rooms/search' => "rooms#search"
  get 'rooms/tokyo' => 'rooms#tokyo'
  get 'rooms/osaka' => 'rooms#osaka'
  get 'rooms/kyoto' => 'rooms#kyoto'
  get 'rooms/sapporo' => 'rooms#sapporo'

  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'
  get 'users/:id/index' => 'users#index'
  get 'users/:id/rooms' => 'users#rooms'

  get '/' => 'home#top'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, {onry: [:new, :create, :show, :edit, :update, :destroy]}
  resources :rooms
end
