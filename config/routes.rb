Rails.application.routes.draw do
  namespace :api do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
    post '/products' => 'products#create'
    patch '/products/:id' => 'products#update'
    delete '/products/:id' => 'products#destroy'
    get '/suppliers' => 'suppliers#index'
    get '/suppliers/:id' => 'suppliers#show'
    post '/suppliers' => 'suppliers#create'
    patch '/suppliers/:id' => 'suppliers#update'
    delete '/suppliers/:id' => 'suppliers#destroy'
    post '/users' => 'users#create'
    post '/sessions' => 'sessions#create'
    post '/orders' => 'orders#create'
    get '/orders' => 'orders#index'
    get '/orders/:id' => 'orders#show'
    get '/hario_v60_ceramic_dripper' => 'products#hario_v60_ceramic_dripper'
    get '/hario_v60_filters' => 'products#hario_v60_filters'
    get '/product_lookup_query' => 'products#lookup'
    get '/product_lookup_segment/:name' => 'products#lookup'
    post '/carted_products' => 'carted_products#create'
    get '/carted_products' => 'carted_products#index'

  end
end