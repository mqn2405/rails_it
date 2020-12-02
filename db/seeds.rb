# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
unless User.find_by_email("admin@gmail.com").present?
  User.create(name: "Admin", age: 18, email: "admin@gmail.com", password: "123456", password_confirmation: "123456", isAdmin: true)
  puts "Add account admin"
end