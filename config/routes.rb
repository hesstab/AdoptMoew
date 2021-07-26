Rails.application.routes.draw do
  root :to => 'listings#index'
  resources :listings
  resources :users, :only => [:new, :create, :index, :show]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
