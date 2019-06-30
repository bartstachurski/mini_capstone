class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @product = Product.find_by(id: the_id)
    render 'show.json.jb'
  end

  def hario_v60_ceramic_dripper
    @product = Product.find_by(name: "Hario v60 Ceramic Dripper")
    render 'hario_v60_ceramic_dripper.json.jb'
  end

  def hario_v60_filters
    @product = Product.find_by(name: "Hario v60 Filters")
    render 'hario_v60_filters.json.jb'
  end

  def lookup
    product_name = params["name"]
    @product = Product.find_by(name: product_name)
    render 'show.json.jb'
  end
end