FactoryBot.define do
#  factory :user do
#    name 'John'
#    email 'john.doe@example.com'
#    password '123456'
#    active true
#  end

  factory :random_user, class: User do
    name { Faker::Name.name }
    email { Faker::Internet.email }
    # password '123456'
    # active true
  end
end
