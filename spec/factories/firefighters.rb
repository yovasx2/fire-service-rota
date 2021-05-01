FactoryBot.define do
  factory :firefighter, class: User do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.unique.email }
    password { 'password' }
    skills { User::SKILLS.sample(rand(3) + 1) }
    role { 'firefighter' }
  end
end
