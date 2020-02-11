# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Cleaning database...'



puts 'destroying bookings...'
Booking.destroy_all

puts 'destroying nannies...'
Nanny.destroy_all

puts 'destroying users...'
User.destroy_all



puts 'Creating nannies...'

# 5.times do
#   nanny = Nanny.new(
#     nanny_name: Faker::Name.name,
#     address: Faker::Address.full_address,
#     phone_number: Faker::PhoneNumber.cell_phone,
#     price_per_hour: Faker::Number.within(range: 5..50),
#     years_of_experience: Faker::Number.within(range: 0..50),
#     email: Faker::Internet.email
#   )
#   nanny.save!
# end

# do 9 nannies

Nanny.create(
    nanny_name: Faker::Name.name,
    address: 'E2 8DY',
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    years_of_experience: Faker::Number.within(range: 0..50),
    price_per_hour: Faker::Number.within(range: 5..50),
    image: 'nanny_4.png',
    bio: Faker::Quote.most_interesting_man_in_the_world
  )

Nanny.create(
    nanny_name: Faker::Name.name,
    address: 'E2 0BU',
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    years_of_experience: Faker::Number.within(range: 0..50),
    price_per_hour: Faker::Number.within(range: 5..50),
    image: 'nanny_7.png',
    bio: Faker::Quote.most_interesting_man_in_the_world
  )



Nanny.create(
    nanny_name: Faker::Name.name,
    address: 'SW1A 1AA',
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    years_of_experience: Faker::Number.within(range: 0..50),
    price_per_hour: Faker::Number.within(range: 5..50),
    image: 'nanny_3.png',
    bio: Faker::Quote.most_interesting_man_in_the_world
  )

Nanny.create(
    nanny_name: Faker::Name.name,
    address: 'W1J 0AH',
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    years_of_experience: Faker::Number.within(range: 0..50),
    price_per_hour: Faker::Number.within(range: 5..50),
    image: 'nanny_8.png',
    bio: Faker::Quote.most_interesting_man_in_the_world
  )

Nanny.create(
    nanny_name: Faker::Name.name,
    address: 'NW1 0PB'  ,
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    years_of_experience: Faker::Number.within(range: 0..50),
    price_per_hour: Faker::Number.within(range: 5..50),
    image: 'nanny_5.png',
    bio: Faker::Quote.most_interesting_man_in_the_world
  )

Nanny.create(
    nanny_name: Faker::Name.name,
    address: 'SE11 4FE',
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    years_of_experience: Faker::Number.within(range: 0..50),
    price_per_hour: Faker::Number.within(range: 5..50),
    image: 'nanny_1.png',
    bio: Faker::Quote.most_interesting_man_in_the_world
  )

Nanny.create(
    nanny_name: Faker::Name.name,
    address: 'WC1A 1AP',
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    years_of_experience: Faker::Number.within(range: 0..50),
    price_per_hour: Faker::Number.within(range: 5..50),
    image: 'nanny_2.png',
    bio: Faker::Quote.most_interesting_man_in_the_world
  )

Nanny.create(
    nanny_name: Faker::Name.name,
    address: 'SE1 0AG',
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    years_of_experience: Faker::Number.within(range: 0..50),
    price_per_hour: Faker::Number.within(range: 5..50),
    image: 'nanny_6.png',
    bio: Faker::Quote.most_interesting_man_in_the_world
  )

Nanny.create(
    nanny_name: Faker::Name.name,
    address: 'W8 4AD',
    email: Faker::Internet.email,
    phone_number: Faker::PhoneNumber.cell_phone,
    years_of_experience: Faker::Number.within(range: 0..50),
    price_per_hour: Faker::Number.within(range: 5..50),
    image: 'nanny_9.png',
    bio: Faker::Quote.most_interesting_man_in_the_world
  )



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

puts 'Finished!'

