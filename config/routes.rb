Rails.application.routes.draw do
  namespace :api do
    get '/products' => 'products#index'
    get '/products/:id' => 'products#show'
    get '/hario_v60_ceramic_dripper' => 'products#hario_v60_ceramic_dripper'
    get '/hario_v60_filters' => 'products#hario_v60_filters'
    get '/product_lookup_query' => 'products#lookup'
    get '/product_lookup_segment/:name' => 'products#lookup'
  end
end