# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'


p "------ Starting deleting data ----------"

Post.destroy_all

p "------ Create data ----------"

10.times do
  Post.create(
    title: Faker::Book.title,
    description: Faker::JapaneseMedia::Naruto.eye
  )
end
