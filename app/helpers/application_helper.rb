module ApplicationHelper
  def events_controller?
  	"events" == params[:controller]
  end
  
  def sessions_controller?
    "sessions" == params[:controller]
  end

  def suggestions_controller?
  	"suggestions" == params[:controller]
  end

  def shares_controller?
  	"shares" == params[:controller]
  end
  
  def products_controller?
  	"products" == params[:controller]
  end
end
