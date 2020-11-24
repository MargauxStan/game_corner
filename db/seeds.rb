# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do
    User.create!(
        username: Faker::Creature::Animal.name,
        email: Faker::Internet.email,
        password: "azerty",
    )
end

(1..30).each do
    Game.create!(
        title: Faker::Game.title,
        platform: Faker::Game.platform,
        description: Faker::Lorem.paragraph(sentence_count: 10),
        genre: Faker::Game.genre,
        price: Faker::Number.decimal(l_digits: 2)
    )
end
