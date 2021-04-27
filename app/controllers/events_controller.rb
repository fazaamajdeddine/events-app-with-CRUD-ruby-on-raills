class EventsController < ApplicationController
def home
    @events= Event.all
end

def  new
end

end
