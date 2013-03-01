class OrdersController < ApplicationController
  before_filter :logged_in, only: [:new, :create]
  before_filter :admin_user, only: :index
  
  def new
    @order = Order.new(cart: current_user.cart)
  end

  def create
    @order = Order.new(params[:order])
    @order.cart = current_user.cart
    
    if @order.save && @order.purchase(current_user)
      
      OrdersMailer.order_confirmation(current_user).deliver
      OrdersMailer.order_notification(current_user).deliver
      render 'success'
    else
      render 'new'
    end
  end  
end
