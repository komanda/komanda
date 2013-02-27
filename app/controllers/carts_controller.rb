class CartsController < ApplicationController
  before_filter :logged_in
  
  def show
    @cart = current_user.cart
  end  
  
  def destroy
    current_user.cart.destroy
    redirect_to kstuff_path
  end
end
