Rails.application.routes.draw do
  root :to => 'listings#index'
  resources :listings
  resources :users

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
