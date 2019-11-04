# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
puts "u start"
u = User.create(
    first_name: "azerty",
    last_name: "Clavier",
    description: "ceci est un essaie",
    email: "azerty-thp@yopmail.com",   
    encrypted_password: "try" )
    #email: "mourzagh.m@live.fr",
    puts "u end"
puts "e start"
# time = Time.now + 3600
# e = Event.new(
#     start_date: Time.now,
# )
e = Event.create(
    start_date: Time.now,
    duration: 30,
    title: "Try and succees",
    description: "try and try and try and try and try",
    price: 16,
    location: "yes"
)
puts "e end"
puts "a start"
a = Attendance.create(user_id: u.id, event_id: e.id)
puts "a end"


