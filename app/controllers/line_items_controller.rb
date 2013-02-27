class LineItemsController < ApplicationController
  before_filter :logged_in
    
  def create
    @product = Product.find(params[:product_id])
    @line_item = current_user.cart.line_items.create(
      product: @product,
      quantity: params[:qty],
      size: params[:size])
  end
  
  def destroy
    @line_item = current_user.cart.line_items.find(params[:id])
    @line_item.destroy
  end
end
