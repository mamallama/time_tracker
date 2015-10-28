# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  Developer.create!(name: Faker::Name.name, email: Faker::Internet.email, password: Faker::Internet.password(8))
end

10.times do
  TimeEntry.create!(duration: Faker::Date.backward(14), developer_id: rand(1..99))
end

10.times do
  Project.create!(name: Faker::Company.name, duration: rand(2..360))
end
