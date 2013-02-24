class SessionsController < ApplicationController
  before_filter :store_url, only: [:new, :destroy]
  
  def new
    redirect_to root_path if current_user
  end
  
  def create
    auth = request.env["omniauth.auth"]
    @user = User.find_by(provider: auth["provider"], uid: auth["uid"]) ||
            User.create_with_omniauth(auth)
    @user.update_attribute(:img_url, auth["info"]["image"])
    session[:user_id] = @user.id
    redirect_back
  end
  
  def destroy
    session[:user_id] = nil    
    redirect_back
  end
end
