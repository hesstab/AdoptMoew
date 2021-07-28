Rails.application.routes.draw do

  root :to => 'listings#index'
  resources :listings
  resources :users

  resources :conversations do
    resources :messages
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
