class Api::ProductsController < ApplicationController
  def all_products
    @products = Product.all
    render 'all_products.json.jb'
  end

  def hario_v60_ceramic_dripper
    @product = Product.find_by(name: "Hario v60 Ceramic Dripper")
    render 'hario_v60_ceramic_dripper.json.jb'
  end

  def hario_v60_filters
    @product = Product.find_by(name: "Hario v60 Filters")
    render 'hario_v60_filters.json.jb'
  end
end