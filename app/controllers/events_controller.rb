class EventsController < ApplicationController
  before_filter :admin_user, only: [:new, :create, :edit, :update, :destroy]
  before_filter :logged_in, only: [:join, :rate]
  before_filter :find_event, only: [:show, :edit, :update, :destroy, :pictures, :join, :rate, :going]
  before_filter :increment_views, only: :show
  before_filter :get_upcoming_and_past_event, only: [:show, :index]
  before_filter :store_url
  
  def find_event
    @event = Event.find(params[:id])
  end
  
  def get_upcoming_and_past_event
    @upcoming = Event.upcoming
    @past     = Event.past
  end
  
  def increment_views
    @event.inc(:views, 1)
  end
    
  def index
  end
  
  def show
    count = @event.users.count
    
    if count > 8
      @going = @event.users.skip(count - 8)
    else
      @going = @event.users
    end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(params[:event])
    @event.pictures = (params[:event][:pictures]).split
    
    if @event.save
      redirect_to @event
    else
      render "new"
    end
  end
  
  def edit
  end

  def update
    @event.update_attributes(params[:event])
    @event.update_attribute(:pictures, (params[:event][:pictures]).split)
    redirect_to @event, notice: "Event updated!"
  end

  def destroy
    @event.destroy
    redirect_to root_path
  end
  
  def join
    @event.join(current_user, false)

    render json: { count:       @event.users.count, 
                   name:        current_user.name,
                   image_url:   current_user.image_url,
                   profile_url: current_user.profile_url }
  end
  
  def pictures
  end
  
  def rate
    @event.ratings["#{current_user.id}"] = params[:rating].to_i
    @event.save
    
    render json: { new_rating:  @event.rating,
                   count:       @event.ratings.count }
  end
  
  def going
    @going = @event.users
  end
end
