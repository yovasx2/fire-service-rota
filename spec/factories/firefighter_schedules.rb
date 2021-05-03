FactoryBot.define do
  factory :schedule, class: Schedule do
    for_firefighter
    start_at { rand(48).hours.after.beginning_of_hour }
    end_at { start_at + 1.hour }
    ready { false }

    trait :for_firefighter do
      association :schedulable, factory: :firefighter
    end

    trait :for_vehicle do
      association :schedulable, factory: :vehicle
    end
  end
end
