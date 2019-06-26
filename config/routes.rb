Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#all_products"
    get "/hario_v60_ceramic_dripper" => "products#hario_v60_ceramic_dripper"
    get "/hario_v60_filters" => "products#hario_v60_filters"
  end
end