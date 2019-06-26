Rails.application.routes.draw do
  namespace :api do
    get "/products" => "products#all_products"
  end
end
