# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 'wuennik@live.com', password: 'verySecret', password_confirmation: 'verySecret')

40.times do
  Course.create([{
  title: Faker::Educator.course_name,
  description: Faker::ChuckNorris.fact,
  user_id: User.first.id
  }])
end
