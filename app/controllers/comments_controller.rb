class CommentsController < ApplicationController
  before_filter :logged_in, only: [:create, :destroy]
  before_filter :get_commentable
  
  def get_commentable
    if params[:event_id]
      @commentable = Event.find(params[:event_id])
    else
      @commentable = Suggestion.find(params[:suggestion_id])
    end
  end
  
  def index
    @comments = @commentable.comments
  end
  
  def create
    unless spam?
      @comment = @commentable.comments.new(params[:comment])
      @comment.user_id = current_user.id
      @comment.save
      @count = @commentable.comments.count
      
      if @commentable.class.to_s == "Suggestion"
        update_comment_count(@commentable)
      end
    end
  end
  
  def destroy
    @comment = @commentable.comments.find(params[:id])
    if authenticated_user?(@comment)
      @comment.destroy
      @count = @commentable.comments.count
      
      if @commentable.class.to_s == "Suggestion"
        update_comment_count(@commentable)
      end
    end
  end
  
  private
    
    def update_comment_count(commentable)
      commentable.update_attribute(:comment_count, @commentable.comments.count)
    end
    
    def spam?
      if current_user.comments.count > 0
        return (Time.now - current_user.comments.last.created_at) <= 1 
      else
        return false
      end
    end
end
