FactoryBot.define do
  factory :vehicle do
    name { Faker::Vehicle.model }
    year { Faker::Vehicle.year }
    brand { Faker::Vehicle.manufacture }
    status { 'available' }
    crew do
      {
        'crew commander': 1,
        'driver': 1,
        'firefighter': 2
      }
    end
  end
end
