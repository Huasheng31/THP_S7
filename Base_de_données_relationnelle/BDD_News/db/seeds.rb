# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

30.times do
  user = User.create!(name: Faker::Name.first_name)
end

30.times do
  post = Post.create!(link: Faker::OnePiece.island, user_id: Faker::Number.between(1, 25))
end

30.times do
  comment = Comment.create!(comment: Faker::OnePiece.island, post_id: Faker::Number.between(1, 25))
end

30.times do
  followcomment = Followcomment.create!(comment: Faker::OnePiece.island, comment_id: Faker::Number.between(1, 25))
end