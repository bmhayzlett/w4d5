# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  User.create!( username: Faker::Name.name, password: "password" )
  Sub.create!( title: Faker::App.name, moderator_id: (1..20).to_a.sample,
                description: Faker::Hacker.say_something_smart,
                moderator: Faker::Name.name
              )
end
