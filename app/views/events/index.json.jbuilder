json.ignore_nil!

json.events @events do |event|
    json.id             event.id
    json.feed_amount    event.feed_amount
    json.event_time     event.event_time
    json.has_run        event.has_run
    json.images event.images do |image|
        json.id             image.id
        json.file_name      image.file_name
    end
end