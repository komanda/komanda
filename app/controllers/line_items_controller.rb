class LineItemsController < ApplicationController
  before_filter :logged_in
    
  def create
    @product = Product.find(params[:product_id])
    @line_item = current_user.cart.line_items.new(
      product: @product,
      quantity: params[:qty].to_i,
      size: params[:size])
    @line_itme = add_to_cart(@line_item, current_user.cart)
    @line_itme.save
    
    respond_to do |format|
      format.js
      format.html { redirect_to current_user.cart }
    end
  end
  
  def destroy
    @line_item = current_user.cart.line_items.find(params[:id])
    @line_item.destroy
  end
  
  private
    def add_to_cart(line_item, cart)
      cart.line_items.each do |item|
        if line_item.product == item.product && line_item.size == item.size
          item.quantity += line_item.quantity
          item.save
          return item
        end
      end
      line_item
    end
end
