class EventsController < ApplicationController
    before_action :authenticate_request!
    
    public
        def index
            @events = Event.where("id = ?", current_user.id)
    end
end