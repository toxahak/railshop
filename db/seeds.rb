# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Product.delete_all

55.times do
  Product.create( title: Faker::Lorem.sentence(5),
                  description: Faker::Lorem.paragraph,
                  image_url: 'http://thecatapi.com/api/images/get?format=src&size=small&type=png&i='+rand(100..200).to_s,
                  price: rand(1..5000) / 100.0)
end
