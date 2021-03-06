# need to fix controllers to include the new attribute instock

class Api::ProductsController < ApplicationController

  before_action :authenticate_admin, only: [:create, :update, :destroy]

  def index
    p "*" * 50
    p current_user
    p "*" * 50    
    if params[:search]
      @products = Product.where("name LIKE ?", "%#{params[:search]}%")
    else
      @products = Product.all
    end

    if params[:discount]
      @products = @products.where("price < ?", 10)
    end

    if params[:sort] && params[:sort_order]
      @products = @products.order(params[:sort] => params[:sort_order])
    else
      @products = @products.order(:id => :asc)
    end

    if params[:category]
      category = Category.find_by(name: params[:category])
      @products = category.products
    end

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
      description: params[:description],
      instock: params[:instock],
      supplier_id: params[:supplier_id]
      )
    if @product.save
      render 'create.json.jb'
    else
      # render 'errors.json.jb', status: :unprocessible_entity
      render json: {errors: @product.errors.full_messages}, status: :unprocessible_entity
    end
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
    @product.description =  params[:description] || @product.description
    @product.instock = params[:instock] || @product.instock
    @product.save
    if @product.save
      render 'update.json.jb'
    else
      # render 'errors.json.jb', status: :unprocessible_entity
      render json: {errors: @product.errors.full_messages}, status: :unprocessible_entity
    end   
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