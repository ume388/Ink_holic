class User::EventsController < ApplicationController
  
  def index
  end
  
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    if @event.save
      redirect_to events_path
    else
      render 'new'
    end
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  def event_params
    params.require(:event).permit(:title, :body, :user_id)
  end
  
end
