# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

30.times do
  course = Course.create!(title: Faker::OnePiece.island, body: Faker::OnePiece.quote)
end

30.times do
  lesson = Lesson.create!(name: Faker::OnePiece.island, desc: Faker::OnePiece.quote, course_id: Faker::Number.between(1, 25))
end

