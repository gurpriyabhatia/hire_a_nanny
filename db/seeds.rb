# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Cleaning database...'

Nanny.destroy_all
Booking.destroy_all
User.destroy_all

puts 'Creating nannies...'

21.times do
  nanny = Nanny.new(
    nanny_name: Faker::Name.name,
    address: "#{Faker::Address.street_address} United Kingdom",
    phone_number: Faker::PhoneNumber.cell_phone,
    price_per_hour: Faker::Number.within(range: 5..50),
    years_of_experience: Faker::Number.within(range: 0..50),
    email: Faker::Internet.email
  )
  nanny.save!
end

puts 'Creating users...'

5.times do
  user = User.new(
    email: Faker::Internet.email,
    user_name: Faker::Internet.username,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    password: 'password'
  )
  user.save!
end

user = User.new(
    email: "alexia@test.com",
    user_name: Faker::Internet.username,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    password: 'hellohello'
  )
  user.save!

puts 'Finished!'
