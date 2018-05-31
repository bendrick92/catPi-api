json.ignore_nil!

json.array! @events.each do |event|
    json.id             event['id']
    json.feed_amount    event['feed_amount']
    json.event_time     event['event_time']
    json.has_run        event['has_run']
end