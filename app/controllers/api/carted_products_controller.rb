class Api::CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      product_id: params[:product_id],
      quantity: params[:quantity],
      user_id: current_user.id,
      status: "carted"
    )
    @carted_product.save
    render 'create.json.jb'
    #this shoudl be show.json.jb
  end
end
