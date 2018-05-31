# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Event.destroy_all

Event.create([
    {
        feed_amount: 0,
        event_time: DateTime.strptime("05/01/2018 17:00", "%m/%d/%Y %H:%M"),
        has_run: false
    }
])

p "Created #{Event.count} Events"