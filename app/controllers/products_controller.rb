class ProductsController < ApplicationController
  before_filter :admin_user, except: [:index, :cart]
  before_filter :logged_in, only: :cart
  
  
  def index
    @products = Product.all
  end
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(params[:product])
    @product.pictures = (params[:product][:pictures]).split(" ")
    
    if @product.save
      redirect_to kstuff_path, notice: "New product added."
    else
      render 'new'
    end
  end
  
  def edit
    @product = Product.find(params[:id])
  end
  
  def update
    @product = Product.find(params[:id])
    @product.update_attributes(params[:product])
    @product.update_attribute(:pictures, params[:product][:pictures].split(" "))
    redirect_to kstuff_path, notice: "Product updated."
  end
  
  def destroy
    Product.find(params[:id]).destroy
    redirect_to kstuff_path, notice: "Product removed."
  end
  
  # def cart
  #   @product = Product.find(params[:id])
  #   @line_item = current_user.add_to_cart(@product, params[:quantity], params[:size])
  #   @cart = current_user.carts.last
  # end
  
end
