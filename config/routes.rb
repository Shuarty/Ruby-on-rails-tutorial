# routes
Rails.application.routes.draw do
  get 'static_pages/hello'

  root 'phrases#index'
  post '/phrases' => 'phrases#create'
  get '/phrases/new' => 'phrases#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
