FactoryBot.define do
  factory :firefighter do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.unique.email }
    skills { [] }
    role { 'firefighter' }
  end
end
