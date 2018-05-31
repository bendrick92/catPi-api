class EventsController < ApplicationController
    public
        def index
            @events = Event.all

    end
end