# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
    user = User.new
    user.username = Faker::Creature::Animal.name
    user.email = Faker::Internet.email
    user.password = "azerty"
    user.save
    30.times do
        game = Game.new
        game.title = Faker::Game.title
        game.platform = Faker::Game.platform
        game.description = Faker::Lorem.paragraph(sentence_count: 10)
        game.genre = Faker::Game.genre
        game.price = Faker::Number.decimal(l_digits: 2)
        game.user_id = user.id
        game.save
    end
end
