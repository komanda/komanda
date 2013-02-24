class OrdersController < ApplicationController
  before_filter :logged_in, only: [:new, :create]
  before_filter :admin_user, only: :index
  
  def index
    if params[:event_id]
      @users = []
      Event.find(params[:event_id]).tickets.each_key do |key|
        @users << User.find(key)
      end
    end
  end

  def new
    if params[:event_id]
      @event = Event.find(params[:event_id])
      if @event.upcoming?
        session[:product_id] = nil
        session[:event_id] = @event.id
        session[:price] = @event.price
        @order = Order.new()
      else
        redirect_to root_path 
      end
    elsif params[:product_id]
      @product = Product.find(params[:product_id])
      session[:event_id] = nil
      session[:product_id] = @product.id
      session[:price] = @product.price
      @order = Order.new()
    else
      redirect_to root_path
    end
  end

  def create
    @order = current_user.orders.new(params[:order])
    if session[:event_id]
      @event = Event.find(session[:event_id])
      @order.type = session[:event_id]
    else
      @product = Product.find(session[:product_id])
      @order.type = session[:product_id]
    end
    @order.price = session[:price]
    @order.ip_address = request.remote_ip
                                             
    if @order.save && @order.purchase
      
      if session[:event_id]
        @event = Event.find(session[:event_id])
        if @event.tickets.has_key?("#{current_user.id}")
          @event.tickets["#{current_user.id}"] += @order.quantity
        else
          @event.tickets["#{current_user.id}"] = @order.quantity
        end
        @event.save
        @event.join(current_user, false)
      else
        @product = Product.find(session[:product_id])
        @product.num_sold += 1
        @product.save
      end
      
      current_user.update_email(@order.email)
      
      if @event
        OrdersMailer.order_confirmation(current_user, @order, @event).deliver
      else
        OrdersMailer.order_confirmation(current_user, @order, @product).deliver
        OrdersMailer.notify(current_user, @order, @product).deliver
      end
      
      render 'success'
    else
      render 'new'
    end
  end
end
