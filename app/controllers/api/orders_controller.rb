class Api::OrdersController < ApplicationController
  def create
    p "*" * 50
    p current_user
    p "*" * 50
    @order = Order.new(
    user_id: current_user.id,
    product_id: params[:product_id],
    quantity: params[:quantity],
    subtotal: product.price
    # tax: product.price * 0.05,
    # total: :subtotal + :tax
    # this is where you are stuck
    )
    @order.save
    render 'create.json.jb'
  end
end
