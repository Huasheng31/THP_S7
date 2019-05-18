# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

30.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

30.times do
  category = Category.create!(name: Faker::OnePiece.island)
end

30.times do
	@u = rand(1..25)
  article = Article.create!(title: Faker::OnePiece.island, content: Faker::OnePiece.quote, user_id: @u , category_id: @u)
end

30.times do
  coment = Coment.create!(content: Faker::OnePiece.quote, article_id: Faker::Number.between(1, 25), user_id: Faker::Number.between(1, 25))
end

30.times do
  like = Like.create!(article_id: Faker::Number.between(1, 25), user_id: Faker::Number.between(1, 25))
end
