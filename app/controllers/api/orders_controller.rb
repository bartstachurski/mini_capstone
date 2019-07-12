class Api::OrdersController < ApplicationController
  def create
    p "*" * 50
    p current_user
    p "*" * 50
    @order = Order.new(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity])
    @order.subtotal = @order.product.price * @order.quantity
    @order.tax = @order.subtotal * 0.09
    @order.total = @order.subtotal + @order.tax
    @order.save
    render 'create.json.jb'
  end

  def index
    if current_user
      @orders = current_user.orders
      render 'index.json.jb'
    else
      render json: [], status: :unauthorized
    end
  end

  def show
    if current_user
      @order = Order.find_by(id: params[:id])
      render 'show.json.jb'
    else
      render json: [], status: :unauthorized
    end
  end
end
