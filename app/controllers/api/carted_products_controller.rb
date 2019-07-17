class Api::CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id
      )
    @carted_product.save
  end
end
