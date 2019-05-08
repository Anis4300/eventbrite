require 'faker'

print "clear User:"
User.destroy_all
puts " ✔"
print "clear Event:"
Event.destroy_all
puts " ✔"

10.times do
  user = User.create!(
    first_name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name,
     email: Faker::Name.first_name + "@yopmail.com",
    description: Faker::Quote.famous_last_words,
    password: "password"
  )
end

10.times do
  user = Event.create!(
    start_date: Faker::Date.between(1.days.from_now, 15.days.from_now),
    duration: 60,
    title: Faker::Lorem.sentence(2),
    description: Faker::Lorem.sentence(15),
    price: 100,
    location: Faker::Address.city,
    administrator: User.all.sample
  )
end