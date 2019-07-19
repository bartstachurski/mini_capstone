class ProductsController < ApplicationController
  def index
    @products = Product.all
    render 'index.html.erb'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      instock: params[:instock],
      supplier_id: params[:supplier_id],
      instock: "true"
    )
    @product.save
    redirect_to "/products/#{@product.id}"
  end
end