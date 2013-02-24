class SharesController < ApplicationController
  before_filter :logged_in, only: [:new, :create]
  before_filter :store_url
  
  def index
    @share = Share.new
    @shares = Share.recent
    @upcoming = Event.upcoming
    @past     = Event.past
  end

  def new
    @share = Share.new
  end

  def create 
    @share = current_user.shares.create(params[:share])
    
    respond_to do |format|
      if @share.valid?
        @count = Share.count
        format.html { redirect_to shares_path}
      else
        format.html { render "new" }
      end
      format.js
    end
  end

  def destroy
    @share = Share.find(params[:id])
    if authenticated_user?(@share)
      @share.destroy
      @count = Share.count
    else 
      redirect_to shares_path
    end
  end

  private
    def spam?
      if current_user.shares.count > 0
        return (Time.now - current_user.shares.last.created_at) <= 1 ? true : false
      else
        return false
      end
    end
end
