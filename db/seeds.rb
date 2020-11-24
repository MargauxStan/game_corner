# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all

5.times do
    user = User.new
    user.username = Faker::Creature::Animal.name
    user.email = Faker::Internet.email
    user.password = "azerty"
    user.save
end

users = User.all

users.each do |user|
    5.times do
        game = Game.new
        game.name = Faker::Game.title
        game.platform = Faker::Game.platform
        game.description = Faker::Lorem.paragraph(sentence_count: 10)
        game.genre = Faker::Game.genre
        game.price = Faker::Number.decimal(l_digits: 2)
        game.user = user
        game.save
    end
end
