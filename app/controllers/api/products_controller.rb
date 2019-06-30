class Api::ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.json.jb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description]
      )
    @product.save
    render 'create.json.jb'
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