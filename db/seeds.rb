# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
users = User.create([
    {
        email: "walters.benj@gmail.com",
        encrypted_password: "1234",
        api_token: "3c1c6fb59df1f389f21b8a476297b72fae3bb30de508a55e776d06ab5c3bcd756ef65e51236b769c7f1bf3578a60b4e164bf60fa1272311a003d0eb779021088",
        last_login: DateTime.strptime("05/01/2018 12:00", "%m/%d/%Y %H:%M")
    },
    {
        email: "test.user@gmail.com",
        encrypted_password: "5678",
        api_token: "4c1c6fb59df1f389f21b8a476297b72fae3bb30de508a55e776d06ab5c3bcd756ef65e51236b769c7f1bf3578a60b4e164bf60fa1272311a003d0eb779021088",
        last_login: DateTime.strptime("06/01/2018 12:00", "%m/%d/%Y %H:%M")
    }
])
p "Created #{User.count} Users"

Event.destroy_all
events = Event.create([
    {
        user: users[0],
        feed_amount: 0,
        event_time: DateTime.strptime("05/01/2018 17:00", "%m/%d/%Y %H:%M"),
        has_run: false
    },
    {
        user: users[1],
        feed_amount: 0,
        event_time: DateTime.strptime("06/01/2018 17:00", "%m/%d/%Y %H:%M"),
        has_run: false
    }
])
p "Created #{Event.count} Events"

Image.destroy_all
images = Image.create([
    {
        file_name: "test.jpg",
        event: events[0]
    },
    {
        file_name: "test_2.jpg",
        event: events[1]
    }
])
p "Created #{Image.count} Images"
