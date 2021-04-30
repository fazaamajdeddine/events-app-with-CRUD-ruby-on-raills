class EventsController < ApplicationController
    before_action :find_event, only: [:show, :edit, :update, :destroy]

def index
    @events= Event.all.with_attached_image
end

def new
    @event= Event.new
end

def create 
    @event = Event.new(event_params)

   if @event.save 

    redirect_to @event, notice: "Event was successfully created." 
   else 
    redirect_to root_path 
   end
end

def show
    #@event = Event.find(params[:id])
end

def update 
    if @event.update(event_params)
        redirect_to @event
    else 
        render "edit"
    end
end

def edit 
end

def destroy 
    @event.destroy
    redirect_to events_path
end


private
    def find_event
        @event = Event.find(params[:id])
    end
    
    def event_params 
        params.require(:Event).permit(:title,:image,:body)
       
    end
    



end
