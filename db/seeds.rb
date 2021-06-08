# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Car.destroy_all
User.destroy_all

User.create!(first_name: "John", last_name: "Cena", email: "aaaa@gmail.com", password: "password")

ferrari = Car.create!(brand: "Ferrari", model: "250 GTO", year: "1962", price_day: 300, category: "Italian", user_id: 1)
Car.create!(brand: "Jaguar", model: "E-Type", year: "1960", price_day: 200, category: "British", user_id: 1)
Car.create!(brand: "Mercedes", model: "300 SL", year: "1954", price_day: 250, category: "German", user_id: 1)
Car.create!(brand: "Lamborghini", model: "Miura", year: "1966", price_day: 220, category: "Italian", user_id: 1)
Car.create!(brand: "Porche", model: "356 Speedster", year: "1955", price_day: 240, category: "German", user_id: 1)
puts "#{ferrari.model}"
