# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  trainings = Training.create([{ name: 'Cycling'}, { name: 'Aerobics'}])

  {"ashley@example.com" => "password",
  "bill@example.com" => "password"
  }.each do |email, password|
  User.create(email: email.dup, password: password)
end
