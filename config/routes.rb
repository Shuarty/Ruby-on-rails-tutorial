# routes
Rails.application.routes.draw do
  devise_for :users
  get 'static_pages/hello'

  resources :users, only: [:show, :index]
 
  root 'phrases#index'
  post '/phrases' => 'phrases#create'
  get '/phrases/new' => 'phrases#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
