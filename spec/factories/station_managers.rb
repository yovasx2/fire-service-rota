FactoryBot.define do
  factory :station_manager, parent: :firefighter do
    role { 'station manager' }
    skills { User::SKILLS.sample(rand(3)) }
  end
end
