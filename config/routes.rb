Rails.application.routes.draw do

  get '/i' => 'user#index'
  get '/' => 'products#index'
  get '/products/new' => 'products#new'
  post '/products/create' => 'products#create'
  post '/products/product/' => 'products#show'
end
