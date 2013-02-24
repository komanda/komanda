class SuggestionsController < ApplicationController
  before_filter :logged_in, except: [:index, :popular]
  before_filter :suggestions_count, only: [:index, :new, :create, :destroy]
  before_filter :new_suggestion, only: [:index, :popular, :new]
  before_filter :suggestion, only: [:star, :destroy]
  before_filter :store_url
  
  def suggestion
    @suggestion = Suggestion.find(params[:id])
  end
  
  def new_suggestion
    @suggestion = Suggestion.new
  end
  
  def suggestions_count
    @count = Suggestion.count
  end
    
  def index
    @upcoming = Event.upcoming
    @past     = Event.past
    @suggestions = Suggestion.recent
  end
  
  def popular
    @suggestions = Suggestion.popular
  end
  
  def new
  end
  
  def create
    @suggestion = current_user.suggestions.create(params[:suggestion])
    
    respond_to do |format|
      if @suggestion.valid?
        format.html { redirect_to suggestions_path}
      else
        format.html { render "new" }
      end
      format.js
    end
  end
  
  def destroy
    if authenticated_user?(@suggestion)
      @suggestion.destroy
    else
      redirect_to root_path
    end
  end
    
  def star
    @count = @suggestion.star(current_user)
  end

end
