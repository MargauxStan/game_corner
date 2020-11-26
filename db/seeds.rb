# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Booking.destroy_all
Game.destroy_all
User.destroy_all

clem = User.create!(username: "Clem", email: "clem@email.com", password:"azerty")
marg = User.create!(username: "Marg", email: "marg@email.com", password:"azerty")
momo = User.create!(username: "Momo", email: "momo@email.com", password:"azerty")
 
Game.create!(name: "The Witcher Wild Hunt", platform: "PC", description: Faker::Lorem.paragraph(sentence_count: 10), price: 1, user: momo)
Game.create!(name: "Unsharted 4", platform: "PS4", description: Faker::Lorem.paragraph(sentence_count: 10), price: 2, user: clem)
Game.create!(name: "Mario Bross", platform: "Nintendo ds", description: Faker::Lorem.paragraph(sentence_count: 10), price: 1, user: marg)
Game.create!(name: "Assassin Creed", platform: "PS5", description: Faker::Lorem.paragraph(sentence_count: 10), price: 3, user: clem)
Game.create!(name: "No Man's Sky", platform: "PS4", description: Faker::Lorem.paragraph(sentence_count: 10), price: 2, user: momo)
Game.create!(name: "Zelda Link's Awakening", platform: "Nintendo Switch", description: Faker::Lorem.paragraph(sentence_count: 10), price: 1, user: marg)
