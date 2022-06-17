# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times.each do
  User.create(username: Faker::Name.name, email: Faker::Internet.email)
end

User.all.each do |user|
  other_users = User.where.not(id: user.id)

  rand(0..8).times.each do
    Follows::FollowUserService.call(user, other_users.sample)
  end
end
