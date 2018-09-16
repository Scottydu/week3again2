# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 5.times do
#   Category.create([{name: Faker::Kpop.ii_groups}])
# end


Event.create([{
  starts_at: '14:00',
  ends_at: '15:00',
  venue_id: 'Rose Garden',
  hero_image_url: Faker::Avatar.image("50x50"),
  description: Faker::Lorem.sentences(7),
  }])

Event.create([{
  starts_at: '18:00',
  ends_at: '19:00',
  venue_id: 'Opera House',
  hero_image_url: Faker::Avatar.image("50x50"),
  description: Faker::Lorem.sentences(6),
  }])

Event.create([{
  starts_at: '08:00',
  ends_at: '10:00',
  venue_id: 'Rose Garden',
  hero_image_url: Faker::Avatar.image("50x50"),
  description: Faker::Lorem.sentences(4),
  }])

Event.create([{
  starts_at: '15:00',
  ends_at: '16:00',
  venue_id: 'Zee Zees',
  hero_image_url: Faker::Avatar.image("50x50"),
  description: Faker::Lorem.sentences(3),
  }])

Event.create([{
  starts_at: '19:00',
  ends_at: '00:00',
  venue_id: 'Rose Garden',
  hero_image_url: Faker::Avatar.image("50x50"),
  description: Faker::Lorem.sentences(5),
  }])

# t.string "starts_at"
# t.string "ends_at"
# t.string "venue_id"
# t.string "hero_image_url"
# t.text "description"
# t.string "category_id"
# t.string "name"
