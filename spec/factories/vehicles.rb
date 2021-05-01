FactoryBot.define do
  factory :vehicle do
    name { Faker::Vehicle.model }
    year { Faker::Vehicle.year }
    brand { Faker::Vehicle.manufacture }
    status { 'available' }
    crew { Vehicle::CREW }
  end
end
