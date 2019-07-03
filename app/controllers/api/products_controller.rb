# need to fix controllers to include the new attribute instock

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
      description: params[:description],
      instock: params[:instock]
      )
    @product.save
    render 'create.json.jb'
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    render 'destroy.json.jb'
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name] || @product.name
    @product.price = params[:price] || @product.price
    @product.image_url = params[:image_url] || @product.image_url
    @product.description =  params[:description] || @product.description
    @product.instock = params[:instock] || @product.instock
    @product.save
    render 'update.json.jb'
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